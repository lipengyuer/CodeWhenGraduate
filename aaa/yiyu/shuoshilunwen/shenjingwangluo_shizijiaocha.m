load 'C:\Users\admini\Desktop\woca11.mat'
% chang=size(alldata,1);
% xuhao=randperm(chang);
% data1=[xuhao' [1:chang]' alldata];
% data2=sortrows(data1,1);
% alldata1=data2(1:250,3:end);
alldata1=alldata;
 num_fold=10;%����
 count=zeros(num_fold,6);%���Լ��д�����;
for jishuqi= 1:num_fold
    fprintf('��%d����',jishuqi);
    ftrain_x=alldata1(:,1:end-2);
    ftrain_y=alldata1(:,end-1);
    weizhi_test=1+(jishuqi-1)*25:25*jishuqi;
ftrain_x(weizhi_test,:)=[];%end-2);
ftrain_y(weizhi_test,:)=[];%end-1:end);
ftest_x=alldata1((1+(jishuqi-1)*25):25*jishuqi,1:end-2);%end-2);
ftest_y=alldata1((1+(jishuqi-1)*25:25*jishuqi),end-1);%end-1:end);
[a b c d]=shenjingwangluo_yiyu(ftrain_x,ftrain_y,ftest_x,ftest_y);
count(jishuqi,:)=[b c];
end
