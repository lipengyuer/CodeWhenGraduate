function [a1 s1 a2 s2]=fit1fenduan(x)
%shuru=[0:(length(x)-1)]';
% jishuqi=0;
% for m=1:length(x)
%     jishuqi=jishuqi+1;
%     zuida(jishuqi)=max(x(1:m));
%     if(zuida(jishuqi))


y=x/sum(x);
y1=y(1:71);
y2=y(72:end);
shuru1=[1:length(y1)]';
shuru2=[1:length(y2)]';
T=[100*rand 0.01*rand];
%T=5;
[a1 s1 d1 f1]=lsqcurvefit(@fun1,T,shuru1,y1);
T=[100*rand 0.01*rand];
%T=5;
[a2 s2 d2 f2]=lsqcurvefit(@fun1,T,shuru2,y2);
% T=a;
% T=a;
% norm=s;
% res=d;
% ef=f;
% %w=r;

end
