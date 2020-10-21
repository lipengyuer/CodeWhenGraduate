% Version 1.000
%
% Code provided by Ruslan Salakhutdinov and Geoff Hinton
%
% Permission is granted for anyone to copy, use, modify, or distribute this
% program and accompanying programs and documents for any purpose, provided
% this copyright notice is retained and prominently displayed, along with
% a note saying that the original programs are available from our
% web page.
% The programs and documents are distributed without any warranty, express or
% implied.  As the programs were written for research purposes only, they have
% not been tested to the degree that would be advisable in any important
% application.  All use of these programs is entirely at the user's own risk.

% digitdata=[]; 
% targets=[]; 
% load digit0; digitdata = [digitdata; D]; targets = [targets; repmat([1 0 0 0 0 0 0 0 0 0], size(D,1), 1)];  %将从图像文件转化来的ascii文件中存储的是个数字的训练数据存到一个矩阵digitdata中，同时targets中存储对应的输出（标签）
% load digit1; digitdata = [digitdata; D]; targets = [targets; repmat([0 1 0 0 0 0 0 0 0 0], size(D,1), 1)];
% load digit2; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 1 0 0 0 0 0 0 0], size(D,1), 1)]; 
% load digit3; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 1 0 0 0 0 0 0], size(D,1), 1)];
% load digit4; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 1 0 0 0 0 0], size(D,1), 1)]; 
% load digit5; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 1 0 0 0 0], size(D,1), 1)];
% load digit6; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 0 1 0 0 0], size(D,1), 1)];
% load digit7; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 0 0 1 0 0], size(D,1), 1)];
% load digit8; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 0 0 0 1 0], size(D,1), 1)];
% load digit9; digitdata = [digitdata; D]; targets = [targets; repmat([0 0
% 0 0 0 0 0 0 0 1], size(D,1), 1)];
dizhi1='C:\Users\admini\Desktop\aaaaa\deeplearningresearch\alldata.txt';
dizhi2='C:\Users\admini\Desktop\aaaaa\deeplearningresearch\alllable.txt';


x=load(dizhi1);y=load(dizhi2);
for ji=1:size(x,2)
    x(:,ji)=x(:,ji)/max(x(:,ji));
end
xuhao=randperm(length(x))';
hezi=[xuhao x];
hezi1=[xuhao y];
hezi=sortrows(hezi,1);
hezi1=sortrows(hezi1,1);
train_x=hezi(1:350,2:end);
train_y=hezi1(1:350,2:end);
test_x=hezi(351:400,2:end);
test_y=hezi1(351:400,2:end);

digitdata=train_x;
targets=train_y;
totnum=size(digitdata,1);%diditdata的第一个维度的大小
fprintf(1, 'Size of the training dataset= %5d \n', totnum);

rand('state',0); %so we know the permutation of the training data%让“随机”的seed相同，保证是相同的序列里得到的随机数，真随机
randomorder=randperm(totnum);%将1：totnum随机排序

numbatches=totnum/1;%得到100，作业的个数？也就是要求有很多数据 啊
numdims  =  size(digitdata,2);%digitdata的第二个维度的大小（多少列）
batchsize = 1;%
batchdata = zeros(batchsize, numdims, numbatches);%一个batchsize*numdims*numbatches的数据集合
batchtargets = zeros(batchsize, 1000, numbatches);%一个batchsize*10*numbatches的数据集合（10是上面的【000000001】等）;第二维是target的维数

for b=1:numbatches
  batchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);%将digitdata“随机”分成一百份，存储到batchdatda的一百层中去
  batchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);%将targets“随机”分成一百份，存储到batchtargets的一百层中去
end;
clear digitdata targets;%清除workspace

% digitdata=[];
% targets=[];
% load test0; digitdata = [digitdata; D]; targets = [targets; repmat([1 0 0 0 0 0 0 0 0 0], size(D,1), 1)]; 
% load test1; digitdata = [digitdata; D]; targets = [targets; repmat([0 1 0 0 0 0 0 0 0 0], size(D,1), 1)]; 
% load test2; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 1 0 0 0 0 0 0 0], size(D,1), 1)];
% load test3; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 1 0 0 0 0 0 0], size(D,1), 1)];
% load test4; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 1 0 0 0 0 0], size(D,1), 1)];
% load test5; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 1 0 0 0 0], size(D,1), 1)];
% load test6; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 0 1 0 0 0], size(D,1), 1)];
% load test7; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 0 0 1 0 0], size(D,1), 1)];
% load test8; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 0 0 0 1 0], size(D,1), 1)];
% load test9; digitdata = [digitdata; D]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 1], size(D,1), 1)];
% digitdata = digitdata/255;


digitdata=[test_x];targets=test_y;%targets=[repmat([1 0 0 0 0 0 0 0 0 0], size(y,1), 1)]; 
totnum=size(digitdata,1);
fprintf(1, 'Size of the test dataset= %5d \n', totnum);

rand('state',0); %so we know the permutation of the training data
randomorder=randperm(totnum);

numbatches=totnum/1;
numdims  =  size(digitdata,2);
batchsize = 1;
testbatchdata = zeros(batchsize, numdims, numbatches);
testbatchtargets = zeros(batchsize, 1000, numbatches);

for b=1:numbatches
  testbatchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);
  testbatchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);
end;
clear digitdata targets;


%%% Reset random seeds 
rand('state',sum(100*clock)); 
randn('state',sum(100*clock)); %一个n*n矩阵，元素是服从标准正态分布的数



