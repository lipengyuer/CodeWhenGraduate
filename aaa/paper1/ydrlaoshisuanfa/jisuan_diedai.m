function [num_zhuanfa niheyong a h_0 g_0 g_j H_j data4fit]= jisuan_diedai(h_diedai)
h_diedai_wukeng = h_diedai;
for m = 1:9
    h_diedai_wukeng(61-6*(m-1)-12            :72+60-6*(m-1)+12,m) = -10*ones(96,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));%%%%%%%%5%%%%%55%%绝对时间
    h_diedai_wukeng(61+144-(m-1)*6-12    :132+144-(m-1)*6+12,m) = -10*ones(96,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    h_diedai_wukeng(61+144*2-(m-1)*6-12  :132+144*2-(m-1)*6+12,m) = -10*ones(96,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    h_diedai_wukeng(61+144*3-(m-1)*6-12  :132+144*3-(m-1)*6+12,m) = -10*ones(96,1);%zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
    h_diedai_wukeng(73+144*4+(m-1)*6:120+144*4+(m-1)*6,m) = zeros(size(log_num_zhunafa1_wukeng(73:120,m)));
end
niheyong = [];
dianshu = 0;
for m=1:shichang
    jicunqi_he = 0;
    count = 0;
    %每个时间点对应有几个不为坑内——被扣掉了
    for n=1:9
        if(h_diedai_wukeng(m,n)~=-10)
            count = count + 1;
            jicunqi_he = jicunqi_he + h_diedai_wukeng(m,n); 
        end
    end
    %计算坑之外的平均数
    if(count==0)
        h_diedai_wukeng_pingjun(m) = sum(h_diedai_wukeng(m,:))/9;
    else
        h_diedai_wukeng_pingjun(m) = jicunqi_he/count;%(sum(log_num_zhunafa1_wukeng(m,:))+count*10)/9;%(9-count);
    end
    %扣掉坑部分的数据
    if(h_diedai_wukeng_pingjun(m)>-10)
        dianshu = dianshu + 1;
        niheyong(dianshu,:)=[m,h_diedai_wukeng_pingjun(m)];
    end
end
a = polyfit(niheyong(:,1),niheyong(:,2),1);
nihe_jisuan = (a(1)*[1:shichang]'+a(2)*ones(shichang,1));
% xishu = 1;%-0.0007*[1:720]+2;
for m = 1:9
    log_num_zhunafa1_wukeng1(:,m) = (log_num_zhunafa1(:,m) - nihe_jisuan);
end

cunchu_G = [];
for m=1:9;
    cunchu_G(:,m) = [-10*ones((m-1)*6,1);log_num_zhunafa1_wukeng1(:,m);-10*ones((9-m)*6,1)];
end
% plot(cunchu_G(:,1),'r');hold on,plot(cunchu_G(:,2),'m');hold on,plot(cunchu_G(:,3),'k');hold on,plot(cunchu_G(:,4),'black');hold on,plot(cunchu_G(:,5),'b');hold on,plot(cunchu_G(:,6),'y');hold on,plot(cunchu_G(:,7),'g');
for m=1:length(cunchu_G)
    jicunqi_he = 0;
    count = 0;
    %相对时间下，开头和结尾不是对其的——被扣掉了
    for n=1:9
        if(cunchu_G(m,n)~=-10)
            count = count + 1;
            jicunqi_he = jicunqi_he + cunchu_G(m,n); 
        end
    end
    %计算G的平均数
    if(count==0)
        G_pingjun(m) = sum(cunchu_G(m,:))/9;
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
for m=1:1000%迭代次数
    fprintf('%d\n',m);
    if(m==1)
        data4fit = niheyong(:,1:fix(0.6*length(niheyong)))';
        a = polyfit(data4fit(1,:),data4fit(2,:),3);
        h_0(m,:) = a(1)*[1:shichang].^3+a(2)*[1:shichang].^2+a(3)*[1:shichang]+a(4);
        data4fit = [];
    elseif(m>1)
        data4fit = sum(data4fit)/9;
        a = polyfit([1:shichang],data4fit,1);
        h_0(m,:) = a(1)*[1:shichang]+a(2);
    elseif(m<0)
        data4fit = sum(data4fit)/9;
        a = polyfit([1:shichang],data4fit,2);
        h_0(m,:) = a(1)*[1:shichang].^2+a(2)*[1:shichang]+a(3);
    end
    g_j = H_j - repmat(h_0(m,:),9,1);
    cunchu_G = [];
    for n=1:9
        cunchu_G(n,:) = [-10*ones(1,(n-1)*6) g_j(n,:) -10*ones(1,(9-n)*6)];
    end
    % plot(cunchu_G(:,1),'r');hold on,plot(cunchu_G(:,2),'m');hold
    % on,plot(cunchu_G(:,3),'k');hold on,plot(cunchu_G(:,4),'black');hold on,plot(cunchu_G(:,5),'b');hold on,plot(cunchu_G(:,6),'y');hold on,plot(cunchu_G(:,7),'g');
    for p=1:length(cunchu_G)
        jicunqi_he = 0;
        count = 0;
        %相对时间下，开头和结尾不是对其的——被扣掉了
        for q=1:9
            if(cunchu_G(q,p)~=-10)
                count = count + 1;
                jicunqi_he = jicunqi_he + cunchu_G(q,p); 
            end
        end
        %计算G的平均数
        if(count==9)
            G_pingjun(p) = jicunqi_he/9;
        else
            G_pingjun(p) = jicunqi_he/count;%(sum(log_num_zhunafa1_wukeng(m,:))+count*10)/9;%(9-count);
        end
    end
    g_0(m,:) = G_pingjun;
    for n=1:9
        data4fit(n,:) = H_j(n,:) - g_0(m,1+(n-1)*6:shichang+(n-1)*6);
    end
end