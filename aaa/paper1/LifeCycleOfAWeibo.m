% bili=cumsum(hezi,1)./repmat(sum(hezi,1),720,1);
% weizhi_die=[];
% weizhi_die1 = zeros(24,1);
% timeHavingdata= [7 8 9 10 11 12 13 14 15 16 17 18 20 21 22];
% for m = 1:15
%    weizhi_die(m) = min(find(bili(:,m)>0.95));
%    weizhi_die1(timeHavingdata(m))= weizhi_die(m);
% end
% figure;
% 
% bar([0:23],weizhi_die1);
% axis([0 24 0 400]);

% y_con = fun1(a,[1:720]);
% plot([1:720],3*y_con.*exp(g_0(61:720+60)));hold on,plot(hezi(:,1)/sum(hezi(:,1)),'r');

A = 1;
C = 3;
K = 0.001;
t = [0:4000]+0.000001;
% plot(t,A./(1+C*exp(-K*t)));
plot(t,1-exp(-(K*t).^C));