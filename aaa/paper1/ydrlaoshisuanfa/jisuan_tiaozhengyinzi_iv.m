function [num_zhuanfa niheyong a h_0 g_0 g_j H_j gg cancha]= jisuan_tiaozhengyinzi_iv(hezi,geshu)
shichang = 720;
num_zhuanfa = hezi(1:shichang,:)./repmat(geshu',shichang,1);
% num_zhuanfa1 = num_zhuanfa./repmat(sum(num_zhuanfa),shichang,1);
log_num_zhunafa = log((num_zhuanfa));
log_num_zhunafa1 = log_num_zhunafa(:,1:12);
log_num_zhunafa1_wukeng = log_num_zhunafa1(1:shichang,:);
for m = 1:12%%%%%%5起点成七点了全得该？？？？？？？
    log_num_zhunafa1_wukeng(73-6*(m-1)        :72+90-6*(m-1),m)       = -10*ones(90,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));%%%%%%%%5%%%%%55%%绝对时间
    log_num_zhunafa1_wukeng(73+144-(m-1)*6    :72+90+144-(m-1)*6,m)   = -10*ones(90,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    log_num_zhunafa1_wukeng(73+144*2-(m-1)*6  :72+90+144*2-(m-1)*6,m) = -10*ones(90,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    log_num_zhunafa1_wukeng(73+144*3-(m-1)*6  :72+90+144*3-(m-1)*6,m) = -10*ones(90,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
%     log_num_zhunafa1_wukeng(91+144*4+(m-1)*6:120+144*4+(m-1)*6,m) = zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
end
% log_num_zhunafa1_wukeng = num_zhuanfa(:,1:12);
% figure;
% plot(log_num_zhunafa1(:,1),'r');hold on,plot(log_num_zhunafa1(:,2),'m');hold on,plot(log_num_zhunafa1(:,3),'k');hold on,plot(log_num_zhunafa1(:,4),'black');hold on,plot(log_num_zhunafa1(:,5),'b');hold on,plot(log_num_zhunafa1(:,6),'y');hold on,plot(log_num_zhunafa1(:,7),'g');
figure;
hold on,plot(log_num_zhunafa1_wukeng(:,2),'m');hold on,plot(log_num_zhunafa1_wukeng(:,3),'k');hold on,plot(log_num_zhunafa1_wukeng(:,4),'black');hold on,plot(log_num_zhunafa1_wukeng(:,5),'b');hold on,plot(log_num_zhunafa1_wukeng(:,6),'y');hold on,plot(log_num_zhunafa1_wukeng(:,7),'g');;hold on,plot(log_num_zhunafa1_wukeng(:,8),'color',[0.7 0.4 0.2]);;hold on,plot(log_num_zhunafa1_wukeng(:,9),'color',[0.7 0.4 0.9]);;hold on,plot(log_num_zhunafa1_wukeng(:,10),'color',[0.7 0.9 0.2]);hold on,plot(log_num_zhunafa1_wukeng(:,11),'color',[0.1 0.4 0.2]);hold on,plot(log_num_zhunafa1_wukeng(:,12),'color',[0.7 0.1 0.1]);
set(gca,'XTick',[1:72:793]);
xlabel('relative time');
floatAxisX([1:length(log_num_zhunafa1_wukeng)],log_num_zhunafa1_wukeng(:,1),'black-');
set(gca,'XTick',[1:72:793]);
set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
xlabel('real time');
niheyong = [];
dianshu = 0;
for m=1:shichang
    jicunqi_he = 0;
    count = 0;
    %每个时间点对应有几个不为坑内——被扣掉了
    for n=1:12
        if(log_num_zhunafa1_wukeng(m,n)~=-10)
            count = count + 1;
            jicunqi_he = jicunqi_he + log_num_zhunafa1_wukeng(m,n); 
        end
    end
    %计算坑之外的平均数
    if(count==0)
        log_num_zhunafa1_wukeng_pingjun(m) = sum(log_num_zhunafa1_wukeng(m,:))/9;
    else
        log_num_zhunafa1_wukeng_pingjun(m) = jicunqi_he/count;%(sum(log_num_zhunafa1_wukeng(m,:))+count*10)/9;%(9-count);
    end
    %扣掉坑部分的数据
    if(log_num_zhunafa1_wukeng_pingjun(m)>-10)
        dianshu = dianshu + 1;
        niheyong(dianshu,:)=[m,log_num_zhunafa1_wukeng_pingjun(m)];
    end
end
a(1,:) = polyfit(niheyong(:,1),niheyong(:,2),1);
nihe_jisuan = (a(1,1)*[1:shichang]'+a(1,2)*ones(shichang,1));
% xishu = 1;%-0.0007*[1:720]+2;
for m = 1:12
    log_num_zhunafa1_wukeng1(:,m) = (log_num_zhunafa1(:,m) - nihe_jisuan);
end

cunchu_G = [];
for m=1:12
    cunchu_G(:,m) = [-10*ones((m-1)*6,1);log_num_zhunafa1_wukeng1(:,m);-10*ones((12-m)*6,1)];
end
% plot(cunchu_G(:,1),'r');hold on,plot(cunchu_G(:,2),'m');hold on,plot(cunchu_G(:,3),'k');hold on,plot(cunchu_G(:,4),'black');hold on,plot(cunchu_G(:,5),'b');hold on,plot(cunchu_G(:,6),'y');hold on,plot(cunchu_G(:,7),'g');
for m=1:length(cunchu_G)
    jicunqi_he = 0;
    count = 0;
    %相对时间下，开头和结尾不是对其的——被扣掉了
    for n=1:12
        if(cunchu_G(m,n)~=-10)
            count = count + 1;
            jicunqi_he = jicunqi_he + cunchu_G(m,n); 
        end
    end
    %计算G的平均数
    if(count==0)
        G_pingjun(m) = sum(cunchu_G(m,:))/12;
    else
        G_pingjun(m) = jicunqi_he/count;%(sum(log_num_zhunafa1_wukeng(m,:))+count*10)/9;%(9-count);
    end
end
% figure;
% plot(G_pingjun,'g');

H_j = log_num_zhunafa1';
G_tiao0(1,:) = G_pingjun;%开头是十点曲线的开头，结尾是十八点曲线的结尾
G_tiao = log_num_zhunafa1_wukeng1';
h_guyou0(1,:) = nihe_jisuan; 
%%%%%%%%%%%迭代过程%%%%%%%%%%%%%%%%%
for m=1:10000%迭代次数
    fprintf('%d\n',m);
    if(m==1)
        data4fit = niheyong(1:fix(0.4*length(niheyong)),:)';
%         a = polyfit(data4fit(1,:),data4fit(2,:),3);
%         h_0(m,:) = a(1)*[1:shichang].^3+a(2)*[1:shichang].^2+a(3)*[1:shichang]+a(4);
        a = polyfit(data4fit(1,:),data4fit(2,:),1);
        h_0(1,:) = a(1)*[1:shichang]+a(2);
        data4fit = [];
    elseif(m>=1000)
        data4fit = sum(data4fit)/12;
        a = polyfit([1:shichang],data4fit,1);
        h_0(1,:) = a(1)*[1:shichang]+a(2);
    elseif(m<0)
        data4fit = sum(data4fit)/12;
        a = polyfit([1:shichang],data4fit,2);
        h_0(1,:) = a(1)*[1:shichang].^2+a(2)*[1:shichang]+a(3);
    elseif(m<0)
        data4fit = sum(data4fit)/12;
        a = polyfit([1:shichang],data4fit,3);
        h_0(1,:) = 1.01*a(1)*[1:shichang].^3+a(2)*[1:shichang].^2+a(3)*[1:shichang]+a(4);
    end
    g_j = H_j - repmat(h_0(1,:),12,1);
    cunchu_G = [];
    for n=1:12
        cunchu_G(n,:) = [-10*ones(1,(n-1)*6) g_j(n,:) -10*ones(1,(12-n)*6)];
    end
    % plot(cunchu_G(:,1),'r');hold on,plot(cunchu_G(:,2),'m');hold
    % on,plot(cunchu_G(:,3),'k');hold on,plot(cunchu_G(:,4),'black');hold on,plot(cunchu_G(:,5),'b');hold on,plot(cunchu_G(:,6),'y');hold on,plot(cunchu_G(:,7),'g');
    for p=1:length(cunchu_G)
        jicunqi_he = 0;
        count = 0;
        %相对时间下，开头和结尾不是对其的——被扣掉了
        for q=1:12
            if(cunchu_G(q,p)~=-10)
                count = count + 1;
                jicunqi_he = jicunqi_he + cunchu_G(q,p); 
            end
        end
        %计算G的平均数
        if(count==9)
            G_pingjun(p) = jicunqi_he/12;
        else
            G_pingjun(p) = jicunqi_he/count;%(sum(log_num_zhunafa1_wukeng(m,:))+count*10)/9;%(9-count);
        end
    end
    g_0(1,:) = G_pingjun;
    for n=1:12
        data4fit(n,:) = H_j(n,:) - g_0(1,1+(n-1)*6:shichang+(n-1)*6);
    end
    gg(m)=g_0(1,1);
end
% 
% for m=1:2000%迭代次数
%     fprintf('%d\n',m);
%         data4fit = sum(data4fit)/9;
%         a = polyfit([1:720],data4fit,1);
%         h_0(m,:) = a(1)*[1:720]+a(2);
%     g_j = H_j - repmat(h_0(m,:),9,1);
%     cunchu_G = [];
%     for n=1:9
%         cunchu_G(n,:) = [-10*ones(1,(n-1)*6) g_j(n,:) -10*ones(1,(9-n)*6)];
%     end
%     % plot(cunchu_G(:,1),'r');hold on,plot(cunchu_G(:,2),'m');hold
%     % on,plot(cunchu_G(:,3),'k');hold on,plot(cunchu_G(:,4),'black');hold on,plot(cunchu_G(:,5),'b');hold on,plot(cunchu_G(:,6),'y');hold on,plot(cunchu_G(:,7),'g');
%     for p=1:length(cunchu_G)
%         jicunqi_he = 0;
%         count = 0;
%         %相对时间下，开头和结尾不是对其的——被扣掉了
%         for q=1:9
%             if(cunchu_G(q,p)~=-10)
%                 count = count + 1;
%                 jicunqi_he = jicunqi_he + cunchu_G(q,p); 
%             end
%         end
%         %计算G的平均数
%         if(count==9)
%             G_pingjun(p) = jicunqi_he/9;
%         else
%             G_pingjun(p) = jicunqi_he/count;%(sum(log_num_zhunafa1_wukeng(m,:))+count*10)/9;%(9-count);
%         end
%     end
%     g_0(m,:) = G_pingjun;
%     for n=1:9
%         data4fit(n,:) = H_j(n,:) - g_0(m,1+(n-1)*6:720+(n-1)*6);
%     end
% end
% plot(exp(H_j(1,:)),'g');hold on,plot(exp(h_0(1000,:)+g_0(1000,1:720)),'r');

figure;
hold on,plot([1:shichang],exp(h_0(end,:)+g_0(end,1+48:shichang+48)),'r');
axis([0 793 0 150]);
set(gca,'XTick',[1:72:793]);
xlabel('relative time');
floatAxisX([1:shichang],exp(H_j(9,:)),'black-');
set(gca,'XTick',[1:72:793]);
set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
xlabel('real time');
figure;

cancha = exp(h_0(end,:)+g_0(end,1:shichang))-exp(H_j(1,:));

hold on,plot([1:shichang],exp(h_0(end,:)+g_0(end,1:shichang)),'r');
set(gca,'XTick',[1:72:793]);
xlabel('relative time');
floatAxisX([1:shichang],exp(H_j(1,:)),'black-');
set(gca,'XTick',[1:72:793]);
set(gca,'xaxislocation','bottom','xticklabel',{'18:00','6:00','18:00','6:00','18:00','6:00','18:00','6:00','18:00','6:00','18:00','6:00'});
xlabel('real time');

figure;
hold on,plot([1:shichang],h_0(end,1:shichang),'g')
axis([0 793 -5 5]);
set(gca,'XTick',[1:72:793]);
xlabel('relative time');
floatAxisX([1:shichang],g_0(end,1:shichang),'black-');
set(gca,'XTick',[1:72:793]);
set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
xlabel('real time');

% for m=1:12
% figure;
% hold on,plot([1:shichang],exp(h_0(end,:)+g_0(end,1+(m-1)*6:shichang+(m-1)*6)),'r');
% grid on;
% axis([0 793 0 150]);
% set(gca,'XTick',[1:72:793]);
% xlabel('relative time');
% floatAxisX([1:shichang],exp(H_j(m,:)),'black-');
% set(gca,'XTick',[1:72:793]);
% str_shijian = {'7:00','19:00';'8:00','20:00';'9:00','21:00';'10:00','22:00';'11:00','23:00';'12:00','24:00';'13:00','1:00';'14:00','2:00';'15:00','3:00';'16:00','4:00';'17:00','5:00';'18:00','6:00'};
% set(gca,'xaxislocation','bottom','xticklabel',{str_shijian{m,1},str_shijian{m,2},str_shijian{m,1},str_shijian{m,2},str_shijian{m,1},str_shijian{m,2},str_shijian{m,1},str_shijian{m,2},str_shijian{m,1},str_shijian{m,2},str_shijian{m,1},str_shijian{m,2}});
% xlabel('real time');
% end
% for m=2:2%迭代次数
%     figure;
%     for n=1:9
%         h_guyou(n,:) = H_logshiji(n,:) - G_tiao(n,:);%(n,1+(n-1)*6:720+(n-1)*6);
%         hold on,plot(h_guyou(n,:));
%     end
%     h_guyou_jicun = sum(h_guyou)/9;
%     a(m,:) = polyfit([1:720],h_guyou_jicun,1);
%     h_guyou0(m,:) = (a(1,1)*[1:720]'+a(1,2)*ones(720,1));
%     for n = 1:9
%         G_tiao(n,:) = H_logshiji(n,:) - h_guyou0(m,:);
%     end
%      %%%%%%%%%%计算平均的坑函数%%%%%%%%%%
% %     cunchu_G = [];
% %     for n=1:9
% %         cunchu_G(n,:) = [-10*ones(1,(n-1)*6) G_tiao(n,:) -10*ones(1,(9-n)*6)];
% %     end
% %     % plot(cunchu_G(:,1),'r');hold on,plot(cunchu_G(:,2),'m');hold
% %     % on,plot(cunchu_G(:,3),'k');hold on,plot(cunchu_G(:,4),'black');hold on,plot(cunchu_G(:,5),'b');hold on,plot(cunchu_G(:,6),'y');hold on,plot(cunchu_G(:,7),'g');
% %     for p=1:length(cunchu_G)
% %         jicunqi_he = 0;
% %         count = 0;
% %         %相对时间下，开头和结尾不是对其的——被扣掉了
% %         for q=1:9
% %             if(cunchu_G(q,p)~=-10)
% %                 count = count + 1;
% %                 jicunqi_he = jicunqi_he + cunchu_G(q,p); 
% %             end
% %         end
% %         %计算G的平均数
% %         if(count==9)
% %             G_pingjun(m,p) = jicunqi_he/9;
% %         else
% %             G_pingjun(m,p) = (jicunqi_he+(9-count)*10)/count;%(sum(log_num_zhunafa1_wukeng(m,:))+count*10)/9;%(9-count);
% %         end
% %     end
% %     G_tiao0(m,:) = G_pingjun(m,:);
% %     figure;
% %     plot(G_tiao0(m,:));
% end
% plot(log_num_zhunafa1_wukeng_pingjun);hold on,plot([1:720]',a(1)*[1:720]'+a(2)*ones(720,1),'r');
% figure;
% hold on,plot([1:719+1],log_num_zhunafa1_wukeng1(:,1),'r');hold on,plot([1+6:719+6+1],log_num_zhunafa1_wukeng1(:,2),'m');hold on,plot([6*2+1:719+6*2+1],log_num_zhunafa1_wukeng1(:,3),'c'); hold on,plot([6*3+1:719+3*6+1],log_num_zhunafa1_wukeng1(:,4),'b');hold on,plot([4*6+1:719+4*6+1],log_num_zhunafa1_wukeng1(:,5),'g');hold on,plot([5*6+1:719+5*6+1],log_num_zhunafa1_wukeng1(:,6),'color',[0.7 0.4 0.2]);hold on,plot([6*6+1:719+6*6+1],log_num_zhunafa1_wukeng1(:,7),'k');hold on,plot([6*7+1:719+7*6+1],log_num_zhunafa1_wukeng1(:,8),'color',[0.1 0.5 0.7]);hold on,plot([6*8+1:719+8*6+1],log_num_zhunafa1_wukeng1(:,9),'color',[0.8 0.1 0.6]);
% grid;
% set(gca,'XTick',[1:72:793]);
% xlabel('relative time');
% floatAxisX([1+6:720+6],log_num_zhunafa1_wukeng1(:,2),'black-');
% set(gca,'XTick',[1:72:793]);
% set(gca,'xaxislocation','bottom','xticklabel',{'10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00','10:00','22:00'});
% xlabel('real time');
end