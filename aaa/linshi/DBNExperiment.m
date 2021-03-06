% Version 1.000用作n折交叉验证的

% clear all
% close all
maxepoch=15;
%  numhid=jiedianshu1(m11); numpen=jiedianshu2(m22); numpen2=jiedianshu3(m33); %500 500 3000

% fprintf(1,'Converting Raw files into Matlab format \n');
% converter;

fprintf(1,'Pretraining a deep autoencoder. \n');
fprintf(1,'The Science paper used 50 epochs. This uses %3i \n', maxepoch);

load 'C:\Users\admini\Desktop\woca911.mat'
num_fold=10;%折数
count=zeros(num_fold,3);%测试集中错误数;
count_train=zeros(num_fold,3);
Num_testset = size(alldata,1)/10;
for jishuqi= 1:num_fold
    fprintf('The %d time\n', jishuqi);
    numhid=20; numpen=10; numpen2=10; %500 500 3000
    ftrain_x=alldata(:,1:end-2);
    ftrain_y=alldata(:,end-1:end);
    weizhi_test=1+(jishuqi-1)*Num_testset:Num_testset*jishuqi;
    ftrain_x(weizhi_test,:)=[];%end-2);
    ftrain_y(weizhi_test,:)=[];%end-1:end);
    ftest_x=alldata((1+(jishuqi-1)*Num_testset):Num_testset*jishuqi,1:end-2);%end-2);
    ftest_y=alldata((1+(jishuqi-1)*Num_testset:Num_testset*jishuqi),end-1:end);%end-1:end);
    
    aaaaa=ftrain_x;
    bbbbb=ftrain_y;
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

