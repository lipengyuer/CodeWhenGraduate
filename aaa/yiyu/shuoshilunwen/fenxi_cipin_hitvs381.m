% load C:\Users\admini\Desktop\aaaaa\depression\词频分析数据.mat;
load C:\Users\admini\Desktop\aaaaa\depression\计算属性值用数据.mat
x=Cipin0524;
a=x(1:108,:);
b=x(109:end,:);
weizhi1=find(sum(b)>0);
a1=a(:,:);
b1=b(:,:);
aa=sum(a1,2)+0.000001;
bb=sum(b1,2)+0.000001;
cipin_1_ciyu=a1./repmat(aa,1,size(a1,2));
cipin_2_ciyu=b1./repmat(bb,1,size(b1,2));

% %%%%检验词频均值%%%
% for m=1:size(a1,2)
%     h(m)=ztest(cipin_1_ciyu(:,m),mean(cipin_1_ciyu(:,m)),0.05);
% end;
cipindaxiao_buyiyu=-sort(-sum(cipin_2_ciyu));%将词频由大到小排列
cipindaxiao_yiyu=-sort(-sum(cipin_1_ciyu));%将词频由大到小排列
weizhi_buyiyu=[];
weizhi_yiyu=[];
for m=1:8921%提取词语的个数
    weizhi_buyiyu=[weizhi_buyiyu find(sum(cipin_2_ciyu)==cipindaxiao_buyiyu(1,m))];
    weizhi_yiyu=[weizhi_yiyu find(sum(cipin_1_ciyu)==cipindaxiao_yiyu(1,m))];
    fprintf('第n=%d个词语\n',m);
end
figure;
plot(sum(cipin_1_ciyu(:,weizhi_buyiyu))/108,'r');hold on,plot(sum(cipin_2_ciyu(:,weizhi_buyiyu))/273);
data_cipin=[cipin_1_ciyu(:,weizhi_buyiyu);cipin_2_ciyu(:,weizhi_buyiyu)];%381的词频数据

fawei_num=zhenheji';
fawei_num_yiyu=fawei_num(1:108,:);
fawei_num_buyiyu=fawei_num(109:end,:);
faweifenbu_yiyu=fawei_num_yiyu./repmat(sum(fawei_num_yiyu,2),1,size(fawei_num_yiyu,2));
faweifenbu_buyiyu=fawei_num_buyiyu./repmat(sum(fawei_num_buyiyu,2),1,size(fawei_num_buyiyu,2));
fawei_num_hit=zhenheji_hit';
faweifenbu_hit=fawei_num_hit./repmat(sum(fawei_num_hit,2),1,size(fawei_num_hit,2));

data_fawei=[faweifenbu_yiyu;faweifenbu_buyiyu];%381的发微数据

label=[ones(108,1);zeros(273,1)];
label=[label 1-label];%标签

% alldata=[data_cipin data_fawei];
alldata=[data_cipin];
alldata=(alldata-repmat(sum(cipin_2_ciyu(:,weizhi_buyiyu))/273,size(alldata,1),1))./repmat(sum(cipin_2_ciyu(:,weizhi_buyiyu))/273,size(alldata,1),1);
alldata1=(data_fawei-repmat(sum(faweifenbu_buyiyu)/273,size(alldata,1),1))./repmat(sum(faweifenbu_buyiyu)/273,size(alldata,1),1);
alldata=[alldata alldata1];
alldata=1./(1+exp(alldata));
alldata=[alldata label];
cipin_1_ciyu=cipin_1_ciyu(:,weizhi_buyiyu);
cipin_2_ciyu=cipin_2_ciyu(:,weizhi_buyiyu);
clear a b aa bb;
data1=[cipin_1_ciyu;cipin_2_ciyu];


y=[cipinofHIT_part1;cipinofHIT_part2];
aa_hit=sum(y,2)+0.000001;
cipin_1_ciyu_hit=y./repmat(aa_hit,1,size(y,2));
data1_hit=cipin_1_ciyu_hit(:,weizhi_buyiyu);

figure;
plot(sum(data1_hit)/675);
hold on,plot(sum(cipin_1_ciyu)/108,'r');hold on,plot(sum(cipin_2_ciyu)/273,'g');
cipindaxiao_hit=-sort(-sum(cipin_1_ciyu_hit));%将词频由大到小排列
weizhi_hit=[];
for m=1:50%提取词语的个数
    weizhi_hit=[weizhi_hit find(sum(cipin_1_ciyu_hit)==cipindaxiao_hit(1,m))];
end





% x=faweishuliangfenbu24h;
% weizhi=find(sum(x)>=0);
% a=x(1:108,:);
% b=x(109:end,:);
% aa=sum(a,2)+0.000001;
% bb=sum(b,2)+0.000001;
% 
% cipin_1=a./repmat(aa,1,length(weizhi));
% cipin_2=b./repmat(bb,1,length(weizhi));
% clear a b aa bb;
% % cipin_2=b(109:end,:)./repmat(bb,1,length(weizhi));
% cipin_1_=sum(cipin_1)/108;
% cipin_2_=sum(cipin_2)/273;
% plot([0:23],cipin_1_,'r');hold on,plot([0:23],cipin_2_,'g');
% % cipina=(cipin_1-repmat(cipin_1_,size(cipin_1,1),1))./repmat(cipin_1_,size(cipin_1,1),1);
% % cipinb=(cipin_2-repmat(cipin_2_,size(cipin_2,1),1))./repmat(cipin_1_,size(cipin_2,1),1);
% data2=[cipin_1;cipin_2];
% 
% x=UserInfor_EcoNetworkDegree(:,1:2);
% weizhi=find(sum(x)>=0);
% a=x(1:108,:);
% b=x(109:end,:);
% aa=sum(a,2)+0.000001;
% bb=sum(b,2)+0.000001;
% cipin_1=a./repmat(aa,1,length(weizhi));
% cipin_2=b./repmat(bb,1,length(weizhi));
% clear a b aa bb;
% % cipin_2=b(109:end,:)./repmat(bb,1,length(weizhi));
% cipin_1_=sum(cipin_1)/108;
% cipin_2_=sum(cipin_2)/273;
% % plot(cipin_1_,'r');hold on,plot(cipin_2_,'g');
% cipina=(cipin_1-repmat(cipin_2_,size(cipin_1,1),1))./repmat(cipin_2_,size(cipin_1,1),1);
% cipinb=(cipin_2-repmat(cipin_2_,size(cipin_2,1),1))./repmat(cipin_2_,size(cipin_2,1),1);
% data3=[cipina;cipinb];
% 
% alldata=[data1 data2 data3];
% alldata=1./(1+exp(-alldata));
% alldata=[alldata label 1-label];
% 
