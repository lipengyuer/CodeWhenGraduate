function h=youtuyouzhenxiang
t = 0:0.5:2*pi;
x = sin(t);
y = 2*cos(t);
tt= [0:0.5/11:2*pi];
xx = interp1(t,x,tt,'spline');
% yy = ;%ƽ��ϵ����ʲô
yy = interp1(t,y,tt,'spline');%�����ֵ���ᣬ���ѡ��һ��
h=plotyy(tt,xx,tt,yy,'plot');
axis(h(2)); hold on; plot(t,y,'o');
axis(h(1)); hold on; plot(t,x,'+');
% set(h1,'LineStyle','*');
% plot(t,x,'r*');hold on;plot(t,y,'m');
end