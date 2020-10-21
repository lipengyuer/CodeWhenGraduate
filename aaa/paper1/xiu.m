function [L,ef,xiuzheng]=xiu(yixiaoshiduanshu)
shuchu=[3 0.5 4 6.5 7 5 3];
x=[0 4 8 12 16 20 24];
xx=[0:1/yixiaoshiduanshu:24];

L=[rand rand rand rand rand rand rand];
[L j r ef]=lsqcurvefit(@xiuzhenghanshu,L,x,shuchu);
data=xiuzhenghanshu(L,xx);
xiuzheng=data;
plot(xx,data);hold on,plot([0 4 8 12 16 20 24],shuchu,'x');

end