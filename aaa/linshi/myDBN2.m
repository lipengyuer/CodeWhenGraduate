% Version 1.000用作n折交叉验证的

clear all
% close all
maxepoch=20;
fprintf(1,'Pretraining a deep autoencoder. \n');
fprintf(1,'The Science paper used 50 epochs. This uses %3i \n', maxepoch);
load 'C:\Users\admini\Desktop\woca911.mat'

instance = alldata(:,1:end-2);
label = alldata(:,end-1:end);
indices = crossvalind('Kfold',label(:,1),10);
result  = 0;
temp = zeros(3,1) ;
for i=1:10
    test = (indices == i); train = ~test;
    for j=1:1
        numhid=10; numpen=5; numpen2=10; %500 500 3000
        indexForFeature = crossvalind('Kfold',instance(1,:),1);
        featureIndex = (indexForFeature==j);
        ftrain_x = instance(train,featureIndex);
        ftrain_y = label(train,:);
        ftest_x = instance(test,featureIndex);
        ftest_y = label(test,:);
        
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
        
        temp = TestSetResult(test_x_temp,test_y_temp);
        accuracy = (size(test_x_temp,1)-temp(1))/size(test_x_temp,1);
        result = result + accuracy;
        fprintf(' The temporal result of %d fold is  %.3f . And ther number of features is %d.\n' ,i, accuracy,j);
    end;
end;
fprintf(' The last result is  %.3f . \n' , result/10);
