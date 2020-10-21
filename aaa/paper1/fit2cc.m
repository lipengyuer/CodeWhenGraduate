function [T norm res ef]=fit2cc(x)
shuru=[0:(length(x)-1)]';

T=[100*rand rand];
%T=5;
[a s d f]=lsqcurvefit(@fun2cc,T,shuru,x');
T=a;
norm=s;
res=d;
ef=f;
%w=r;

end
