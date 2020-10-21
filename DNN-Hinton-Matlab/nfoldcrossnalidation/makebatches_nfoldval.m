
% train_x=ftrain_x(1:250,:);
% train_y=ftrain_y(1:250,:);
% 
% % test_x=ftrain_x(250:end,:);
% test_y=ftrain_y(250:end,:);
train_x=ftrain_x;
train_y=ftrain_y;

test_x=ftrain_x;
test_y=ftrain_y;
clear hezi hezi1 x xx y ;
digitdata=train_x;
targets=train_y;

% clear train_x train_y;
totnum=size(digitdata,1);%diditdata�ĵ�һ��ά�ȵĴ�С
fprintf(1, 'Size of the training dataset= %5d \n', totnum);

rand('state',0); %so we know the permutation of the training data%�á��������seed��ͬ����֤����ͬ��������õ���������������
randomorder=randperm(totnum);%��1��totnum�������

numbatches=totnum/5;%�õ�100����ҵ�ĸ�����Ҳ����Ҫ���кܶ����� ��
numdims  =  size(digitdata,2);%digitdata�ĵڶ���ά�ȵĴ�С�������У�
batchsize = 5;%
batchdata = zeros(batchsize, numdims, numbatches);%һ��batchsize*numdims*numbatches�����ݼ���
batchtargets = zeros(batchsize,2, numbatches);%һ��batchsize*10*numbatches�����ݼ��ϣ�10������ġ�000000001���ȣ�;�ڶ�ά��target��ά��

for b=1:numbatches
  batchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);%��digitdata��������ֳ�һ�ٷݣ��洢��batchdatda��һ�ٲ���ȥ
  batchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);%��targets��������ֳ�һ�ٷݣ��洢��batchtargets��һ�ٲ���ȥ
end;
clear digitdata targets;%���workspace


digitdata=test_x;targets=test_y;%targets=[repmat([1 0 0 0 0 0 0 0 0 0], size(y,1), 1)]; 
% clear test_x test_y;
totnum=size(digitdata,1);
fprintf(1, 'Size of the test dataset= %5d \n', totnum);

rand('state',0); %so we know the permutation of the training data
randomorder=randperm(totnum);

numbatches=totnum/2;
numdims  =  size(digitdata,2);
batchsize = 2;
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



