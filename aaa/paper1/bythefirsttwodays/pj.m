function a=pj(x,yanchi)
[a1 a2]=zonghet(x);
[T1 TT1]=quan(a1,yanchi);
jisuan1=fun1(T1,[1:length(a1)]);
jisuan2=jisuan1*TT1.*a2;
shiji=a1/sum(a1);
cancha1=jisuan1-shiji;
cancha2=jisuan2-shiji;
plot(jisuan1,'r');hojd on,plot(jisuan2,'g');hold on,plot(shiji);
end