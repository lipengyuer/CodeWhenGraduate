
x=Cipin0521_1;
% x=cipinofHIT_all;
weizhi=find(sum(x)>381*3);
xx=x(:,weizhi);
a=xx(1:108,:);
b=xx(109:end,:);
aa=sum(a,2)+0.000001;
bb=sum(b,2)+0.000001;

cipin_1_ciyu=a./repmat(aa,1,length(weizhi));
cipin_2_ciyu=b./repmat(bb,1,length(weizhi));
clear xx a b aa bb;
% cipin_2=b(109:end,:)./repmat(bb,1,length(weizhi));

% cipin_1_=sum(cipin_1)/108;
% cipin_2_=sum(cipin_2)/273;
% bili=(cipin_1_-cipin_2_)./(cipin_2_+0.000001);
% weizhi1=find(bili>0.5);
% cipin_1__=cipin_1_(:,weizhi1);
% cipin_2__=cipin_2_(:,weizhi1);
% plot(cipin_1__,'r');hold on,plot(cipin_2__,'g');
% 
% cipina=(cipin_1-repmat(cipin_1_,size(cipin_1,1),1))./repmat(cipin_1_,size(cipin_1,1),1);
% cipinb=(cipin_2-repmat(cipin_2_,size(cipin_2,1),1))./repmat(cipin_2_,size(cipin_2,1),1);
% data=[cipin_1(:,weizhi1);cipin_2(:,weizhi1)];
data1=[cipin_1_ciyu;cipin_2_ciyu];
% cipindata = [cipina;cipinb];


x=faweishuliangfenbu24h;
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
plot([0:23],cipin_1_,'r');hold on,plot([0:23],cipin_2_,'g');
% cipina=(cipin_1-repmat(cipin_1_,size(cipin_1,1),1))./repmat(cipin_1_,size(cipin_1,1),1);
% cipinb=(cipin_2-repmat(cipin_2_,size(cipin_2,1),1))./repmat(cipin_1_,size(cipin_2,1),1);
data2=[cipin_1;cipin_2];

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

