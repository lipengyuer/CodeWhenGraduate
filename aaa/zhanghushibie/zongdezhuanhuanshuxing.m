% s1='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\woca1\lajitotalout1.txt';
% s2='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\woca1\lajitotalout2.txt';
% s3='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\woca1\lajitotalout3.txt';
% s4='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\woca1\lajitotalout4.txt';
% wolege1=zhuanhuanshuxing1(s1,s2);
% wolege2=zhuanhuanshuxing1(s3,s4);
% alldata=[wolege1;wolege2];
% save('C:\Users\admini\Desktop\woca.mat','alldata','-mat');

%����ҶҲ
x=load('C:\Users\admini\Desktop\user_time.txt');
y=x(:,2:end);
z=fft(y);
iuehefly=[x(:,1) z];
