function h=youtuyouzhenxiang
t = 0:0.5:2*pi;
x = sin(t);
y = 2*cos(t);
tt= [0:0.5/11:2*pi];
xx = interp1(t,x,tt,'spline');
% yy = ;%平滑系数是什么
yy = interp1(t,y,tt,'spline');%这个插值不会，随便选了一种
h=plotyy(tt,xx,tt,yy,'plot');
axis(h(2)); hold on; plot(t,y,'o');
axis(h(1)); hold on; plot(t,x,'+');
% set(h1,'LineStyle','*');
% plot(t,x,'r*');hold on;plot(t,y,'m');
end