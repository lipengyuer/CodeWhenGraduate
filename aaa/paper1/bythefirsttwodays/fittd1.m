function [T norm res ef]=fittd1(x,yanchi)
shuru=[0:288]';
y=x(1:288)/sum(x);
yy=[0 zeros(yanchi,1)' y(1:(288-yanchi))']';
T=[100*rand 0.1*rand rand];

[a s d f]=lsqcurvefit(@funtd1,T,shuru,yy);
T=a;
norm=s;
res=d;
ef=f;

end
