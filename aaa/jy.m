function jianyan=jy(x,y)
a=y(1:length(x))';
yy=54061*92.581/(446*446).*x.*exp(-(x-3)/446);
plot(x,a,'g');hold on,plot(x,yy,'b');hold on,plot(x,yy./a,'r');

end