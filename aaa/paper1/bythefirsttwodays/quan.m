function [T1 T2 b1 b2 EFF1 EF2]=quan(x,yanchi)
[b1 b2]=zonghet(x);
[T1 RN1 RI1 EF1]=fit1(b1);
shu=length(b1);
aa1=fun1(T1,[1:shu])';
[T2 RN2 RI2 EF2]=fit1t1(aa1,b2,yanchi,b1);
%jisuanzhi=fun1(T1,[0:1000])*T2*[0 b2(1:1000)];
jisuan1=fun1(T1,[1:length(b1)])';
jisuan2=jisuan1*T2.*b2;
shiji=b1/sum(b1);
cancha1=jisuan1-shiji;
EFF1=sum(cancha1.^2);
cancha2=jisuan2-shiji;
EFF2=sum(cancha2.^2);
hzb=[1:length(b1)];
plot(jisuan1,'Xr');hold on,plot(jisuan2,'Og');hold on,plot(shiji,'b');hold on,plot(shiji./(b2/max(b2)),'black');
figure;
plot(log(hzb),cancha1,'r');hold on,plot(log(hzb),cancha2,'g');
figure;
plot(log(hzb),cumsum(jisuan1),'r');hold on,plot(log(hzb),cumsum(jisuan2),'g');hold on,plot(log(hzb),cumsum(shiji));

end