
load 'C:\Users\admini\Desktop\woca11.mat'
% alldata=alldata4yiyu;
geshu=size(alldata,1);
train_x=alldata(1:geshu,1:end-2);%end-2);
test_x=train_x;%end-2);
train_y=alldata(1:geshu,end-1:end);%end-1:end);
test_y=train_y;%end-1:end);

clear hezi hezi1 x xx y ;
digitdata=train_x;
targets=train_y;

clear train_x train_y;
totnum=size(digitdata,1);%diditdata�ĵ�һ��ά�ȵĴ�С
fprintf(1, 'Size of the training dataset= %5d \n', totnum);

rand('state',0); %so we know the permutation of the training data%�á��������seed��ͬ����֤����ͬ��������õ���������������
randomorder=randperm(totnum);%��1��totnum�������

numbatches=totnum/10;%�õ�100����ҵ�ĸ�����Ҳ����Ҫ���кܶ����� ��
numdims  =  size(digitdata,2);%digitdata�ĵڶ���ά�ȵĴ�С�������У�
batchsize = 10;%
batchdata = zeros(batchsize, numdims, numbatches);%һ��batchsize*numdims*numbatches�����ݼ���
batchtargets = zeros(batchsize,2, numbatches);%һ��batchsize*10*numbatches�����ݼ��ϣ�10������ġ�000000001���ȣ�;�ڶ�ά��target��ά��

for b=1:numbatches
  batchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);%��digitdata��������ֳ�һ�ٷݣ��洢��batchdatda��һ�ٲ���ȥ
  batchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);%��targets��������ֳ�һ�ٷݣ��洢��batchtargets��һ�ٲ���ȥ
end;
clear digitdata targets;%���workspace


digitdata=[test_x];targets=test_y;%targets=[repmat([1 0 0 0 0 0 0 0 0 0], size(y,1), 1)]; 
clear test_x test_y;
totnum=size(digitdata,1);
fprintf(1, 'Size of the test dataset= %5d \n', totnum);

rand('state',0); %so we know the permutation of the training data
randomorder=randperm(totnum);

numbatches=totnum/1;
numdims  =  size(digitdata,2);
batchsize = 1;
testbatchdata = zeros(batchsize, numdims, numbatches);
testbatchtargets = zeros(batchsize, 2, numbatches);

for b=1:numbatches
  testbatchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);
  testbatchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);
end;
clear digitdata targets;


%%% Reset random seeds 
rand('state',sum(100*clock)); 
randn('state',sum(100*clock)); %һ��n*n����Ԫ���Ƿ��ӱ�׼��̬�ֲ�����



