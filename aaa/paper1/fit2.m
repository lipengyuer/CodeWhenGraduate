function [T norm res ef]=fit2(x)
%shuru=[0:(length(x)-1)]';
shuru=[1:length(x)]';
y=x/sum(x);
T=[1000*rand];
%T=5;
[a s d f]=lsqcurvefit(@fun2,T,shuru,y);
T=a;
norm=s;
res=d;
ef=f;
%w=r;

end
