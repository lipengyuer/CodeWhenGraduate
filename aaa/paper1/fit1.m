function [T norm res ef]=fit1(x)
%shuru=[0:(length(x)-1)]';
shuru=[1:length(x)]';
y=x/sum(x);
T=[100*rand 0.001*rand];
%T=5;
[a s d f]=lsqcurvefit(@fun1,T,shuru,y);
T=a;
norm=s;
res=d;
ef=f;
%w=r;

end
