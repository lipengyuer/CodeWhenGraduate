function [T norm res ef]=fit1cc(x)
shuru=[0:(length(x)-1)];
T=[rand rand 100*rand];

[a s d f]=lsqcurvefit(@fun1cc,T,shuru,x');
T=a;
norm=s;
res=d;
ef=f;
%w=r;

end
