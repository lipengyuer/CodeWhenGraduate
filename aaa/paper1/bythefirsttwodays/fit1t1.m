function [TT norm res ef]=fit1t1(suande,yonghushiduanfb,yanchi,x)
% shuru=[0:144*5];
y=x(1:144*5)'/sum(x);
yy=[0 zeros(1,yanchi) y(1:(144*5-yanchi))];
suande1=[0 zeros(1,yanchi) suande(1:(144*5-yanchi))'];
yh=[0 yonghushiduanfb(1:144*5)'];
T=10*rand;
r=[suande1;yh];

[a s d f]=lsqcurvefit(@fun1t1,T,r,yy);
TT=a;
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