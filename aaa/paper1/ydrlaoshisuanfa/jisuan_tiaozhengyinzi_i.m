function [num_zhuanfa niheyong a]= jisuan_tiaozhengyinzi_i(hezi,geshu)
shichang = 720;
num_zhuanfa = hezi(1:shichang,:)./repmat(geshu',shichang,1);
% num_zhuanfa1 = num_zhuanfa./repmat(sum(num_zhuanfa),shichang,1);
log_num_zhunafa = log((num_zhuanfa));
log_num_zhunafa1 = log_num_zhunafa(:,2:10);
log_num_zhunafa1_wukeng = log_num_zhunafa1;
for m = 1:9
    log_num_zhunafa1_wukeng(61+18            :72+60+18,m) = -10*ones(72,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    log_num_zhunafa1_wukeng(61+144+1*6+18    :132+144+1*6+18,m) = -10*ones(72,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    log_num_zhunafa1_wukeng(61+144*2+2*6+18  :132+144*2+2*6+18,m) = -10*ones(72,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    log_num_zhunafa1_wukeng(61+144*3+3*6+18  :132+144*3+3*6+18,m) = -10*ones(72,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
%     log_num_zhunafa1_wukeng(73+144*4+(m-1)*6:120+144*4+(m-1)*6,m) = zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
end
% for m = 1:8
%     cha_h_ij(:,m) = log_num_zhunafa1(1+6*1:end,m+1) - log_num_zhunafa1(1:end-6*1,m);
%     p(m,:) = polyfit([1:length(cha_h_ij)]',cha_h_ij(1:end,m),1);
% %     figure;
% 
% end
% figure;
% hold on,plot([1:719+1],log_num_zhunafa1_wukeng(:,1),'r');hold on,plot([1+6:719+6+1],log_num_zhunafa1_wukeng(:,2),'m');hold on,plot([6*2+1:719+6*2+1],log_num_zhunafa1_wukeng(:,3),'c'); hold on,plot([6*3+1:719+3*6+1],log_num_zhunafa1_wukeng(:,4),'b');hold on,plot([4*6+1:719+4*6+1],log_num_zhunafa1_wukeng(:,5),'g');hold on,plot([5*6+1:719+5*6+1],log_num_zhunafa1_wukeng(:,6),'color',[0.7 0.4 0.2]);hold on,plot([6*6+1:719+6*6+1],log_num_zhunafa1_wukeng(:,7),'k');hold on,plot([6*7+1:719+7*6+1],log_num_zhunafa1_wukeng(:,8),'color',[0.1 0.5 0.7]);hold on,plot([6*8+1:719+8*6+1],log_num_zhunafa1_wukeng(:,9),'color',[0.8 0.1 0.6]);
% grid;
% set(gca,'XTick',[1:72:79213]);
% xlabel('relative time');
% floatAxisX([1+6:720+6],log_num_zhunafa1_wukeng(:,2),'black-');
% set(gca,'XTick',[1:72:793]);
% set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
% xlabel('real time');

% log_num_zhunafa1_wukeng_pingjun = sum(log_num_zhunafa1_wukeng')'/9;

niheyong = [];
dianshu = 0;
for m=1:720
    count = 0;
    %每个时间点对应有几个不为坑内——被扣掉了
    for n=1:9
        if(log_num_zhunafa1_wukeng==-10)
            count = count + 1;
        end
    end
    %计算坑之外的平均数
    if(count==0)
        log_num_zhunafa1_wukeng_pingjun(m) = sum(log_num_zhunafa1_wukeng(m,:))/9;
    else
        log_num_zhunafa1_wukeng_pingjun(m) = sum(log_num_zhunafa1_wukeng(m,:))/count;
    end
    %扣掉坑部分的数据
    if(log_num_zhunafa1_wukeng_pingjun(m)>-10)
        dianshu = dianshu + 1;
        niheyong(dianshu,:)=[m,log_num_zhunafa1_wukeng_pingjun(m)];
    end
end
a = polyfit(niheyong(:,1),niheyong(:,2),2);
figure;
nihe_jisuan = a(1)*[1:720]'.^2+(a(2))*[1:720]'+a(3)*ones(720,1);

% xishu = exp(-0.0025*[1:720]);
xishu = -0.0027*[1:720]+2;
for m = 1:9
    log_num_zhunafa1_wukeng1(:,m) = (log_num_zhunafa1(:,m) - nihe_jisuan)./xishu';
end
plot(log_num_zhunafa1_wukeng_pingjun);hold on,plot([1:720]',a(1)*[1:720]'.^2+a(2)*[1:720]'+a(3)*ones(720,1),'r');
figure;
hold on,plot([1:719+1],log_num_zhunafa1_wukeng1(:,1),'r');hold on,plot([1+6:719+6+1],log_num_zhunafa1_wukeng1(:,2),'m');hold on,plot([6*2+1:719+6*2+1],log_num_zhunafa1_wukeng1(:,3),'c'); hold on,plot([6*3+1:719+3*6+1],log_num_zhunafa1_wukeng1(:,4),'b');hold on,plot([4*6+1:719+4*6+1],log_num_zhunafa1_wukeng1(:,5),'g');hold on,plot([5*6+1:719+5*6+1],log_num_zhunafa1_wukeng1(:,6),'color',[0.7 0.4 0.2]);hold on,plot([6*6+1:719+6*6+1],log_num_zhunafa1_wukeng1(:,7),'k');hold on,plot([6*7+1:719+7*6+1],log_num_zhunafa1_wukeng1(:,8),'color',[0.1 0.5 0.7]);hold on,plot([6*8+1:719+8*6+1],log_num_zhunafa1_wukeng1(:,9),'color',[0.8 0.1 0.6]);
grid;
set(gca,'XTick',[1:72:793]);
xlabel('relative time');
floatAxisX([1+6:720+6],log_num_zhunafa1_wukeng1(:,2),'black-');
set(gca,'XTick',[1:72:793]);
set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
xlabel('real time');

% log_num_zhunafa1_wukeng_pingjun = sum(log_num_zhunafa1_wukeng')'/9;
% 
% hold on,plot([1:719+1],log_num_zhunafa1(:,1),'r');hold on,plot([1+6:719+6+1],log_num_zhunafa1(:,2),'m');hold on,plot([6*2+1:719+6*2+1],log_num_zhunafa1(:,3),'c'); hold on,plot([6*3+1:719+3*6+1],log_num_zhunafa1(:,4),'b');hold on,plot([4*6+1:719+4*6+1],log_num_zhunafa1(:,5),'g');hold on,plot([5*6+1:719+5*6+1],log_num_zhunafa1(:,6),'color',[0.7 0.4 0.2]);hold on,plot([6*6+1:719+6*6+1],log_num_zhunafa1(:,7),'k');hold on,plot([6*7+1:719+7*6+1],log_num_zhunafa1(:,8),'color',[0.1 0.5 0.7]);hold on,plot([6*8+1:719+8*6+1],log_num_zhunafa1(:,9),'color',[0.8 0.1 0.6])
% grid;
% set(gca,'XTick',[1:72:793]);
% xlabel('relative time');
% floatAxisX([1+6:720+6],log_num_zhunafa1(:,2),'black-');
% set(gca,'XTick',[1:72:793]);
% set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
% xlabel('real time');
% % 
% figure;
% hold on,plot([6+1:713+6+1],cha_h_ij(:,1),'r');hold on,plot([6+6+1:713+6+6+1],cha_h_ij(:,2),'m');hold on,plot([6*2+6+1:713+6*2+6+1],cha_h_ij(:,3),'c'); hold on,plot([6*3+6+1:713+3*6+6+1],cha_h_ij(:,4),'b');hold on,plot([4*6+6+1:713+4*6+6+1],cha_h_ij(:,5),'g');hold on,plot([5*6+6+1:713+5*6+6+1],cha_h_ij(:,6),'color',[0.7 0.4 0.2]);hold on,plot([6*6+6+1:713+6+6*6+1],cha_h_ij(:,7),'k');
% grid;
% set(gca,'XTick',[1:72:79213]);
% xlabel('relative time');
% floatAxisX([6*6+6+1:713+6+6*6+1],cha_h_ij(:,8),'black-');
% set(gca,'XTick',[1:72:793]);
% set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
% xlabel('real time');
end