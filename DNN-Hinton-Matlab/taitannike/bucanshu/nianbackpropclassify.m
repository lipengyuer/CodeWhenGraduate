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

% This program fine-tunes an autoencoder with backpropagation.
% Weights of the autoencoder are going to be saved in mnist_weights.mat
% and trainig and test reconstruction errors in mnist_error.mat
% You can also set maxepoch, default value is 200 as in our paper.  

maxepoch=100;
fprintf(1,'\nTraining discriminative model on MNIST by minimizing cross entropy error. \n');
fprintf(1,'60 batches of 1000 cases each. \n');

load mnistvhclassify%载入各层RBM的可见层与隐层的连接权值，以及各自的偏置
load mnisthpclassify
load mnisthp2classify
% load mnisthp3classify

makedata;%再将训练数据和测试数据分割成多分任务
[numcases numdims numbatches]=size(batchdata);
N=numcases; 

%%%% PREINITIALIZE WEIGHTS OF THE DISCRIMINATIVE MODEL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w1=[vishid; hidrecbiases];%分别是葛增rbm的的可见层与隐层的连接权值，以及隐层的偏置——————逐次下来，一个不落
w2=[hidpen; penrecbiases];
w3=[hidpen2; penrecbiases2];
% w4=[hidpen3; penrecbiases3];
w_class = 0.1*randn(size(w3,2)+1,101);%第三维是target的维数%最后的分类，又来随机？？？
% w_class = 0.1*randn(size(w4,2)+1,2);
 

%%%%%%%%%% END OF PREINITIALIZATIO OF WEIGHTS  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

l1=size(w1,1)-1;%对应各层输入的维数-1？？？为什么减一
l2=size(w2,1)-1;
l3=size(w3,1)-1;
l4=size(w_class,1)-1;
% l4=size(w4,1)-1;
% l5=size(w_class,1)-1;
% l6=2;
l5=101; %target的维数

test_err=[];%两个误差
train_err=[];


for epoch = 1:maxepoch

%%%%%%%%%%%%%%%%%%%% COMPUTE TRAINING MISCLASSIFICATION ERROR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
err=0; %初始化
err_cr=0;
counter=0;
[numcases numdims numbatches]=size(batchdata);%全体任务数据的大小，样本个数，维数，批数
N=numcases;
 for batch = 1:numbatches
  data = [batchdata(:,:,batch)];
  target = [batchtargets(:,:,batch)];
  data = [data ones(N,1)];
  w1probs = 1./(1 + exp(-data*w1)); w1probs = [w1probs  ones(N,1)];
  w2probs = 1./(1 + exp(-w1probs*w2)); w2probs = [w2probs ones(N,1)];
  w3probs = 1./(1 + exp(-w2probs*w3)); w3probs = [w3probs  ones(N,1)];
%    w4probs = 1./(1 + exp(-w3probs*w4)); w4probs = [w4probs  ones(N,1)];
%    targetout = exp(w4probs*w_class);
  targetout = exp(w3probs*w_class);%为什么要求指数？？
  targetout = targetout./repmat(sum(targetout,2),1,101);%第三维是target的维数。sum（嘻嘻嘻，2）表示列相加。

  [I J]=max(targetout,[],2);%求各行最大元素值，和所在列数
  [I1 J1]=max(target,[],2);
  counter=counter+length(find(J==J1));%网络算出来的分类结果与标签的相同的个数
  err_cr = err_cr- sum(sum( target(:,1:end).*log(targetout))) ;%这个是什么意思
 end
 train_err(epoch)=(numcases*numbatches-counter);%训练中错误个数
 train_crerr(epoch)=err_cr/numbatches;%什么意思

%%%%%%%%%%%%%% END OF COMPUTING TRAINING MISCLASSIFICATION ERROR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% COMPUTE TEST MISCLASSIFICATION ERROR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
err=0;
err_cr=0;
counter=0;
[testnumcases testnumdims testnumbatches]=size(testbatchdata);
N=testnumcases;
for batch = 1:testnumbatches
  data = [testbatchdata(:,:,batch)];
  target = [testbatchtargets(:,:,batch)];
  data = [data ones(N,1)];
  w1probs = 1./(1 + exp(-data*w1)); w1probs = [w1probs  ones(N,1)];
  w2probs = 1./(1 + exp(-w1probs*w2)); w2probs = [w2probs ones(N,1)];
  w3probs = 1./(1 + exp(-w2probs*w3)); w3probs = [w3probs  ones(N,1)];
%      w4probs = 1./(1 + exp(-w3probs*w4)); w4probs = [w4probs  ones(N,1)];
%    targetout = exp(w4probs*w_class);
   targetout = exp(w3probs*w_class);
  targetout = targetout./repmat(sum(targetout,2),1,101);%第三维是target的维数


  [I J]=max(targetout,[],2);
  [I1 J1]=max(target,[],2);
  counter=counter+length(find(J==J1));
  err_cr = err_cr- sum(sum( target(:,1:end).*log(targetout))) ;
end
 test_err(epoch)=(testnumcases*testnumbatches-counter);
 test_crerr(epoch)=err_cr/testnumbatches;
 fprintf(1,'Before epoch %d Train # misclassified: %d (from %d). Test # misclassified: %d (from %d) \t \t \n',...
            epoch,train_err(epoch),numcases*numbatches,test_err(epoch),testnumcases*testnumbatches);

%%%%%%%%%%%%%% END OF COMPUTING TEST MISCLASSIFICATION ERROR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 tt=0;
 shujufenshu=10;%自己定义的存储器
 for batch = 1:numbatches/shujufenshu%除以10？？将原来分层的数据放到同一层里，每次将原来的10层放到data中
 fprintf(1,'epoch %d batch %d\r',epoch,batch);

%%%%%%%%%%% COMBINE 10 MINIBATCHES INTO 1 LARGER MINIBATCH %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 tt=tt+1; 
 data=[];
 targets=[]; 
 for kk=1:shujufenshu
  data=[data 
        batchdata(:,:,(tt-1)*shujufenshu+kk)]; 
  targets=[targets
        batchtargets(:,:,(tt-1)*shujufenshu+kk)];
 end 

%%%%%%%%%%%%%%% PERFORM CONJUGATE GRADIENT WITH 3 LINESEARCHES
%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%用line search
%%%%%%%%%%%%%%% 法的共轭梯度法？泛函？早知道就看了--一种快速求解线性方程精确解的方法
  max_iter=3;

  if epoch<6  % First update top-level weights holding other weights fixed. 
    N = size(data,1);
    XX = [data ones(N,1)];
    w1probs = 1./(1 + exp(-XX*w1)); w1probs = [w1probs  ones(N,1)];%用到目前为止加到data中的数据算后边的
    w2probs = 1./(1 + exp(-w1probs*w2)); w2probs = [w2probs ones(N,1)];
    w3probs = 1./(1 + exp(-w2probs*w3));% w3probs = [w3probs  ones(N,1)];%
%        w4probs = 1./(1 + exp(-w3probs*w4)); %w4probs = [w4probs  ones(N,1)];

    VV = [w_class(:)']';%这个啥意思，两次求转置？？？？这是有意的吗。还是那个随机矩阵----对一个矩阵a来说a（：）意为所有元素一列一列组成向量；这里先一列列转置后组成长的向量，再转置，成为列向量
    Dim = [l4; l5];
    [X, fX] = taitannikeminimize(VV,'taitannikeCG_CLASSIFY_INIT',max_iter,Dim,w3probs,targets);%这才是求解的???输入个数超过了minimize函数定义的个数？？？
%      [X, fX] = minimize1(VV,'CG_CLASSIFY_INIT1',max_iter,Dim,w4probs,targets);
     w_class = reshape(X,l4+1,l5);
%      w_class = reshape(X,l5+1,l6);

  else
    VV = [w1(:)' w2(:)' w3(:)' w_class(:)']';
%     VV = [w1(:)' w2(:)' w3(:)' w4(:)' w_class(:)']';
%     Dim = [l1; l2; l3; l4; l5; l6];
    Dim = [l1; l2; l3; l4; l5];
    [X, fX] = taitannikeminimize(VV,'taitannikeCG_CLASSIFY',max_iter,Dim,data,targets);

    w1 = reshape(X(1:(l1+1)*l2),l1+1,l2);
    xxx = (l1+1)*l2;
    w2 = reshape(X(xxx+1:xxx+(l2+1)*l3),l2+1,l3);
    xxx = xxx+(l2+1)*l3;
    w3 = reshape(X(xxx+1:xxx+(l3+1)*l4),l3+1,l4);
    xxx = xxx+(l3+1)*l4;
%      w4 = reshape(X(xxx+1:xxx+(l4+1)*l5),l4+1,l5);
%      xxx = xxx+(l4+1)*l5;
%  w_class = reshape(X(xxx+1:xxx+(l5+1)*l6),l5+1,l6);
    w_class = reshape(X(xxx+1:xxx+(l4+1)*l5),l4+1,l5);

  end
%%%%%%%%%%%%%%% END OF CONJUGATE GRADIENT WITH 3 LINESEARCHES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 end

 %save mnistclassify_weights w1 w2 w3 w_class
 save mnistclassify_weights w1 w2 w3 w_class
 save mnistclassify_error test_err test_crerr train_err train_crerr;

end



