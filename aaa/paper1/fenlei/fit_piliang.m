function [T norm res ef]=fit_piliang(x,t)
%shuru=[0:(length(x)-1)]';
y=x/sum(x);
T=[100*rand 0.1*rand;10*rand 10*rand];
if(randn>0)
    suijishu=1;
else suijishu=2;
end
    
%T=5;
[a s d f]=lsqcurvefit(@fun1,T(suijishu,:),t,y);
T=a;
norm=s;
res=d;
ef=f;
%w=r;

end
