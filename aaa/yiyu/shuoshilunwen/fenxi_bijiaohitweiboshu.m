load C:\Users\admini\Desktop\aaaaa\depression\微博时间分布及天数等数据zhenshitianshu.mat

%平均每天发布微博数量
numperday_dep=mean(weiboshu(1:108)./zhenshitianshu(1:108));
std_numperday_dep=std(weiboshu(1:108)./zhenshitianshu(1:108));
numperday_normal=mean(weiboshu(109:end)./zhenshitianshu(109:end));
std_numperday_normal=std(weiboshu(109:end)./zhenshitianshu(109:end));
numperday_hit=mean(weiboshu_hit./zhenshitianshu_hit);
std_numperday_hit=std(weiboshu_hit./zhenshitianshu_hit);


%%%各时段发微博数量
x=zhenheji'./repmat(zhenshitianshu',1,24);
numfenbu_dep=mean(x(1:108,:));
numfenbu_normal=mean(x(109:end,:));
numfenbu_hit=mean(zhenheji_hit'./repmat(zhenshitianshu_hit',1,24));

% weizhi=find(zhenshitianshu_hit<365);
% numfenbu_hit=mean(zhenheji_hit(:,weizhi)'./repmat(zhenshitianshu_hit(:,weizhi)',1,24));
figure;
plot([0:23],numfenbu_hit,'b');
hold on,plot([0:23],numfenbu_normal,'g');hold on,plot([0:23],numfenbu_dep,'r');
num_whenclass_hit=sum(numfenbu_hit(9:11))+sum(numfenbu_hit(15:17));
%%%%%%%%%%%381在2013年发微分布%%%%%%%%%%%%%%%%
weizhi_yiyu=find(zhenshitianshu(1:108)>365);
weizhi_buyiyu=find(zhenshitianshu(109:end)>365);
figure;
plot(mean(nian2013faweitongji(weizhi_yiyu,:)),'r');hold on,plot(mean((nian2013faweitongji(weizhi_yiyu+108,:))),'g');
title('381在2013年的微博数量');

%%%%%%%%hit2013年发微博数量分析%%%%%
weizhi=find(zhenshitianshu_hit>365);%至少用了一年的用户
nian2013faweitongji_hit_perstutent=mean(nian2013faweitongji_hit(weizhi,:));
figure;
plot([1:365],nian2013faweitongji_hit_perstutent);

weizhi=find(zhenshitianshu_hit>180);%最近半年开始使用的用户
nian2013faweitongji_hit_perstutent=mean(nian2013faweitongji_hit(weizhi,:));
figure;
plot([1:365],nian2013faweitongji_hit_perstutent);


x=zhenheji_hit';
aa=sum(x,2)+0.000001;
cipin_1=x./repmat(aa,1,size(x,2));
clear a b aa bb;
data2=[cipin_1];
faweifenbu_hitxuesheng=sum(data2)/length(x);
figure;
% plot([0:23],faweifenbu_hitxuesheng,'b');hold on,plot([0:23],faweifenbu_nornal,'g');hold on,plot([0:23],faweifenbu_dep,'r');


