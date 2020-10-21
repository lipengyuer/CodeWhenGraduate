function [num_zhuanfa cha_h_ij p]= jisuan_tiaozhengyinzi(hezi,geshu)
shichang = 720;
num_zhuanfa = hezi(1:shichang,:)./repmat(geshu',shichang,1);
% num_zhuanfa1 = num_zhuanfa./repmat(sum(num_zhuanfa),shichang,1);
log_num_zhunafa = log(num_zhuanfa);
% log_num_zhunafaa = log(-log_num_zhunafa);
log_num_zhunafa1 = log_num_zhunafa(:,2:10);
for m = 1:8
    cha_h_ij(:,m) = log_num_zhunafa1(1+6*1:end,m+1) - log_num_zhunafa1(1:end-6*1,m);
    p(m,:) = polyfit([1:length(cha_h_ij)]',cha_h_ij(1:end,m),1);
%     figure;

end
figure;
hold on,plot([1:719+1],log_num_zhunafa1(:,1),'r');hold on,plot([1+6:719+6+1],log_num_zhunafa1(:,2),'m');hold on,plot([6*2+1:719+6*2+1],log_num_zhunafa1(:,3),'c'); hold on,plot([6*3+1:719+3*6+1],log_num_zhunafa1(:,4),'b');hold on,plot([4*6+1:719+4*6+1],log_num_zhunafa1(:,5),'g');hold on,plot([5*6+1:719+5*6+1],log_num_zhunafa1(:,6),'color',[0.7 0.4 0.2]);hold on,plot([6*6+1:719+6*6+1],log_num_zhunafa1(:,7),'k');hold on,plot([6*7+1:719+7*6+1],log_num_zhunafa1(:,8),'color',[0.1 0.5 0.7]);hold on,plot([6*8+1:719+8*6+1],log_num_zhunafa1(:,9),'color',[0.8 0.1 0.6])
grid;
set(gca,'XTick',[1:72:793]);
xlabel('relative time');
floatAxisX([1+6:720+6],log_num_zhunafa1(:,2),'black-');
set(gca,'XTick',[1:72:793]);
set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
xlabel('real time');

figure;
hold on,plot([6+1:713+6+1],cha_h_ij(:,1),'r');hold on,plot([6+6+1:713+6+6+1],cha_h_ij(:,2),'m');hold on,plot([6*2+6+1:713+6*2+6+1],cha_h_ij(:,3),'c'); hold on,plot([6*3+6+1:713+3*6+6+1],cha_h_ij(:,4),'b');hold on,plot([4*6+6+1:713+4*6+6+1],cha_h_ij(:,5),'g');hold on,plot([5*6+6+1:713+5*6+6+1],cha_h_ij(:,6),'color',[0.7 0.4 0.2]);hold on,plot([6*6+6+1:713+6+6*6+1],cha_h_ij(:,7),'k');
grid;
set(gca,'XTick',[1:72:79213]);
xlabel('relative time');
floatAxisX([6*6+6+1:713+6+6*6+1],cha_h_ij(:,8),'black-');
set(gca,'XTick',[1:72:793]);
set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
xlabel('real time');
% for m = 1:6
%     cha_h_ij_(:,m) = cha_h_ij(1:end,1) - cha_h_ij(1:end,m);
%     p(m,:) = polyfit([1:length(cha_h_ij)]',cha_h_ij(1:end,m),1);
% %     figure;
% %     hold on,plot(cha_h_ij_(:,m));
% end
% figure;
% plot(log_num_zhunafa1(:,1));
% h0 = exp(-xishu*[1:shichang]);
% g = num_zhuanfa1(:,1)./h0';
% plot(g(1:250));
% plot(cha_h_ij(:,1),'.b');hold on,plot(cha_h_ij(1:end,2),'.g');hold on,plot(cha_h_ij(1:end,3),'.r');hold on,plot(cha_h_ij(1:end,4),'.m');hold on,plot(cha_h_ij(1:end,5),'.c');hold on,plot(cha_h_ij(1:end,6),'.y');
% junzhi = mean(mean(cha_h_ij(50:end-50,:)));
% figure;
% % figure;
% % plot(sum(num_zhuanfa(:,3:end)')');
% t = [1:shichang];
% num = -junzhi/6*t;
% plot(log_num_zhunafa1(:,1),'.b');hold on,plot([zeros(6,1);log_num_zhunafa1(:,2)],'.g');hold on,plot([zeros(6*2,1);log_num_zhunafa1(:,3)],'.r');hold on,plot([zeros(6*3,1);log_num_zhunafa1(:,4)],'.m');hold on,plot([zeros(6*4,1);log_num_zhunafa1(:,5)],'.c');hold on,plot([zeros(6*5,1);log_num_zhunafa1(:,6)],'.y');hold on,plot(num);
% figure;
% yuanzhi = exp(log_num_zhunafa1-repmat(num',1,8));
% plot(yuanzhi(:,1),'.b');hold on,plot([zeros(6,1);yuanzhi(:,2)],'.g');hold on,plot([zeros(6*2,1);yuanzhi(:,3)],'.r');hold on,plot([zeros(6*3,1);yuanzhi(:,4)],'.m');hold on,plot([zeros(6*4,1);yuanzhi(:,5)],'.c');hold on,plot([zeros(6*5,1);yuanzhi(:,6)],'.y');
% beishu = yuanzhi(:,1)./yuanzhi(:,2);
% cha_jun = [yuanzhi(:,1);zeros(6*5,1)]+[zeros(6,1);yuanzhi(:,2);zeros(6*4,1)]+[zeros(6*2,1);yuanzhi(:,3);zeros(6*3,1)]+[zeros(6*3,1);yuanzhi(:,4);zeros(6*2,1)]+[zeros(6*4,1);yuanzhi(:,5);zeros(6*1,1)]+[zeros(6*5,1);yuanzhi(:,6)];
% figure;
% plot(yuanzhi(:,1),'.b');hold on,plot(yuanzhi(:,2),'.g');hold on,plot(yuanzhi(:,3),'.r');hold on,plot(yuanzhi(:,4),'.m');hold on,plot(yuanzhi(:,5),'.c');hold on,plot(yuanzhi(:,6),'.y');
end