% Version 1.000用作n折交叉验证的

clear all
close all
maxepoch=15; 
%  numhid=jiedianshu1(m11); numpen=jiedianshu2(m22); numpen2=jiedianshu3(m33); %500 500 2000
  
% fprintf(1,'Converting Raw files into Matlab format \n');
% converter; 

fprintf(1,'Pretraining a deep autoencoder. \n');
fprintf(1,'The Science paper used 50 epochs. This uses %3i \n', maxepoch);

load 'C:\Users\admini\Desktop\woqu.mat'
 num_allexample = 370;
chang=size(alldata,1);
xuhao=randperm(chang);
data1=[xuhao' [1:chang]' alldata];
data2=sortrows(data1,1);

alldata1=data2(1:num_allexample,3:end);
 num_fold=10;%折数

num_test = num_allexample/num_fold;
 count=zeros(num_fold,3);%测试集中错误数;
for jishuqi= 1:num_fold
    fprintf('The %d time\n', jishuqi);
    numhid=50; numpen=50; numpen2=10; %500 500 2000
    ftrain_x=alldata1(:,1:end-2);
    ftrain_y=alldata1(:,end-1:end);
    weizhi_test=1+(jishuqi-1)*num_test:num_test*jishuqi;
ftrain_x(weizhi_test,:)=[];%end-2);
ftrain_y(weizhi_test,:)=[];%end-1:end);
ftest_x=alldata1((1+(jishuqi-1)*num_test):num_test*jishuqi,1:end-2);%end-2);
ftest_y=alldata1((1+(jishuqi-1)*num_test:num_test*jishuqi),end-1:end);%end-1:end);

aaaaaaaa=ftest_x;
bbbbbbbb=ftest_y;

makebatches_nfoldval;
[numcases numdims numbatches]=size(batchdata);

fprintf(1,'Pretraining Layer 1 with RBM: %d-%d \n',numdims,numhid);
restart=1;
rbm;
hidrecbiases=hidbiases; 
save mnistvhclassify vishid hidrecbiases visbiases;

fprintf(1,'\nPretraining Layer 2 with RBM: %d-%d \n',numhid,numpen);
batchdata=batchposhidprobs;
numhid=numpen;
restart=1;
rbm;
hidpen=vishid; penrecbiases=hidbiases; hidgenbiases=visbiases;
save mnisthpclassify hidpen penrecbiases hidgenbiases;

fprintf(1,'\nPretraining Layer 3 with RBM: %d-%d \n',numpen,numpen2);
batchdata=batchposhidprobs;
numhid=numpen2;
restart=1;
rbm;
hidpen2=vishid; penrecbiases2=hidbiases; hidgenbiases2=visbiases;
save mnisthp2classify hidpen2 penrecbiases2 hidgenbiases2;

backpropclassify_nfoldval; 
load  mnistclassify_weights w1 w2 w3 w_class;
error_nfoldval;
end
