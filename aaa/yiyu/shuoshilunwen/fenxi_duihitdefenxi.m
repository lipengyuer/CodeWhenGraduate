load C:\Users\admini\Desktop\aaaaa\depression\计算属性值用数据.mat
load C:\Users\admini\Desktop\aaaaa\depression\微博时间分布及天数等数据zhenshitianshu.mat
x=Cipin0524;
% % x=cipinofHIT_all;
weizhi=find(sum(x)>381*3);
xx=x(:,weizhi);
a=xx(1:108,:);
b=xx(109:end,:);
aa=sum(a,2)+0.000001;
bb=sum(b,2)+0.000001;

cipin_1_ciyu=a./repmat(aa,1,length(weizhi));
cipin_2_ciyu=b./repmat(bb,1,length(weizhi));
clear xx a b aa bb;
data1=[cipin_1_ciyu;cipin_2_ciyu];

% x=faweishuliangfenbu24h;
x=zhenheji';
weizhi=find(sum(x)>=0);
a=x(1:108,:);
b=x(109:end,:);
aa=sum(a,2)+0.000001;
bb=sum(b,2)+0.000001;

cipin_1=a./repmat(aa,1,length(weizhi));
cipin_2=b./repmat(bb,1,length(weizhi));
clear a b aa bb;
cipin_1_=sum(cipin_1)/108;
cipin_2_=sum(cipin_2)/273;
data2=[cipin_1;cipin_2];
faweifenbu_nornal=cipin_2_;%正常用户的发微博分布
faweifenbu_dep=cipin_1_;

x=UserInfor_EcoNetworkDegree(:,1:2);
weizhi=find(sum(x)>=0);
a=x(1:108,:);
b=x(109:end,:);
aa=sum(a,2)+0.000001;
bb=sum(b,2)+0.000001;

cipin_1=a./repmat(aa,1,length(weizhi));
cipin_2=b./repmat(bb,1,length(weizhi));
clear a b aa bb;
% cipin_2=b(109:end,:)./repmat(bb,1,length(weizhi));
cipin_1_=sum(cipin_1)/108;
cipin_2_=sum(cipin_2)/273;
% plot(cipin_1_,'r');hold on,plot(cipin_2_,'g');
cipina=(cipin_1-repmat(cipin_2_,size(cipin_1,1),1))./repmat(cipin_2_,size(cipin_1,1),1);
cipinb=(cipin_2-repmat(cipin_2_,size(cipin_2,1),1))./repmat(cipin_2_,size(cipin_2,1),1);
data3=[cipina;cipinb];

alldata=[data1 data2 data3];
alldata=1./(1+exp(-alldata));
alldata=[alldata label 1-label];
% %%%%%%%%%%381分析完毕%%%%%%%%%%%
% % 
% % x=Cipin0521_1;
% x=Cipin0521_1;
% % x=cipinofHIT_all;
% weizhi=find(sum(x)>381*3);
% x=cipinofHIT_all;
% % x=cipinofHIT_all;
% xx=x(:,weizhi);
% aa=sum(xx,2)+0.000001;
% cipin_1_ciyu=xx./repmat(aa,1,length(weizhi));
% clear xx a b aa bb;
% data1=cipin_1_ciyu;
% 
% 
% x=faweifenbuhit;
% aa=sum(x,2)+0.000001;
% cipin_1=x./repmat(aa,1,size(x,2));
% clear a b aa bb;
% data2=[cipin_1];
% faweifenbu_hitxuesheng=sum(data2)/length(x);
% plot([0:23],faweifenbu_hitxuesheng,'b');hold on,plot([0:23],faweifenbu_nornal,'g');hold on,plot([0:23],faweifenbu_dep,'r');
% 
% x=UserInfor_EcoNetworkDegree(:,1:2);
% aa=sum(x)/size(x,1);
% clear x;
% x=econetwork1;
% clear a b bb;
% data3=(x-repmat(aa,size(x,1),1))./repmat(aa,size(x,1),1);
% clear aa;
% 
% 
% alldata=[data1 data2 data3];
% alldata=1./(1+exp(-alldata));
