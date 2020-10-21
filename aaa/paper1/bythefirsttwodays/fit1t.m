function [T norm res ef]=fit1t(x,yonghushiduanfb,yanchi)
len=144*5;
shuru=[1:len];
y=x(1:len)'/sum(x);
yy=[zeros(1,yanchi) y(1:(len-yanchi))];
yh=[yonghushiduanfb(1:len)'];
T=[1000*rand 100*rand 0.1*rand];
r=[shuru;yh];

[a s d f]=lsqcurvefit(@fun1t,T,r,yy);
T=a;
norm=s;
res=d;
ef=f;


% function function1=fun1tt(T,r)
% %function1=T*shuru;
% function1=((exp(-(r(1,:)-T(3))/T(1))/(T(1)-T(2))-exp(-(r(1,:)-T(3))/T(2))/(T(1)-T(2))))*T(4).*r(2,:);
% %T=[rand rand rand];
% %model1=lsqnonlin(fun,T,t,x);
% %model1=fun;
% end
end