
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
totnum=size(digitdata,1);%diditdata的第一个维度的大小
fprintf(1, 'Size of the training dataset= %5d \n', totnum);

rand('state',0); %so we know the permutation of the training data%让“随机”的seed相同，保证是相同的序列里得到的随机数，真随机
randomorder=randperm(totnum);%将1：totnum随机排序

numbatches=totnum/5;%得到100，作业的个数？也就是要求有很多数据 啊
numdims  =  size(digitdata,2);%digitdata的第二个维度的大小（多少列）
batchsize = 5;%
batchdata = zeros(batchsize, numdims, numbatches);%一个batchsize*numdims*numbatches的数据集合
batchtargets = zeros(batchsize,2, numbatches);%一个batchsize*10*numbatches的数据集合（10是上面的【000000001】等）;第二维是target的维数

for b=1:numbatches
  batchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);%将digitdata“随机”分成一百份，存储到batchdatda的一百层中去
  batchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);%将targets“随机”分成一百份，存储到batchtargets的一百层中去
end;
clear digitdata targets;%清除workspace


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
randn('state',sum(100*clock)); %一个n*n矩阵，元素是服从标准正态分布的数



