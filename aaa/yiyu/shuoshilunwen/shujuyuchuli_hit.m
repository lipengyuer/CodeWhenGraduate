% 
% x=Cipin0521_1;
x=Cipin0521_1;
% x=cipinofHIT_all;
weizhi=find(sum(x)>381*3);
x=cipinofHIT_all;
% x=cipinofHIT_all;
xx=x(:,weizhi);
aa=sum(xx,2)+0.000001;
cipin_1_ciyu=xx./repmat(aa,1,length(weizhi));
clear xx a b aa bb;
data1=cipin_1_ciyu;


x=faweifenbuhit;
aa=sum(x,2)+0.000001;
cipin_1=x./repmat(aa,1,size(x,2));
clear a b aa bb;
data2=[cipin_1];

x=UserInfor_EcoNetworkDegree(:,1:2);
aa=sum(x)/size(x,1);
clear x;
x=econetwork1;
clear a b bb;
data3=(x-repmat(aa,size(x,1),1))./repmat(aa,size(x,1),1);
clear aa;


alldata=[data1 data2 data3];
alldata=1./(1+exp(-alldata));
