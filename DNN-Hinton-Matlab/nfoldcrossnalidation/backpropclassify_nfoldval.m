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
maxepoch=100;%����������
fprintf(1,'\nTraining discriminative model on MNIST by minimizing cross entropy error. \n');
fprintf(1,'60 batches of 1000 cases each. \n');

load mnistvhclassify
load mnisthpclassify
load mnisthp2classify

makebatches_nfoldval;
% makebatches_yiyu_tenfold;

% makebatches_zhanghushibie;
% makebatches_zhanghushibie;%��������
% makebatches;
[numcases numdims numbatches]=size(batchdata);%batchdata����ά�ֱ���ÿ���������������ĸ�����ÿ���������������ĳ��ȡ����������
N=numcases; 

%%%% PREINITIALIZE WEIGHTS OF THE DISCRIMINATIVE MODEL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w1=[vishid; hidrecbiases];%Ԥѵ���õ��ĸ��������Ȩֵ��ƫ�ã�
w2=[hidpen; penrecbiases];
w3=[hidpen2; penrecbiases2];
w_class = 0.1*randn(size(w3,2)+1,2);%����ά��target��ά�����������Ժ���
 

%%%%%%%%%% END OF PREINITIALIZATIO OF WEIGHTS  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

l1=size(w1,1)-1;
l2=size(w2,1)-1;
l3=size(w3,1)-1;
l4=size(w_class,1)-1;
l5=2; %target��ά��

test_err=[];
train_err=[];


for epoch = 1:maxepoch%�����ѵ�����������Բ��Ի�����������

%%%%%%%%%%%%%%%%%%%% COMPUTE TRAINING MISCLASSIFICATION ERROR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
err=0; 
err_cr=0;
counter=0;
[numcases numdims numbatches]=size(batchdata);
N=numcases; 
for batch = 1:numbatches
  data = [batchdata(:,:,batch)];
  target = [batchtargets(:,:,batch)];
  data = [data ones(N,1)];
  w1probs = 1./(1 + exp(-data*w1)); w1probs = [w1probs  ones(N,1)];
  w2probs = 1./(1 + exp(-w1probs*w2)); w2probs = [w2probs ones(N,1)];
  w3probs = 1./(1 + exp(-w2probs*w3)); w3probs = [w3probs  ones(N,1)];
  
  %softmax�ع�
  targetout = exp(w3probs*w_class);
  targetout = targetout./repmat(sum(targetout,2),1,2);%����ά��target��ά��������������תΪ��������

  [I J]=max(targetout,[],2);
  [I1 J1]=max(target,[],2);
  counter=counter+length(find(J==J1));%
  err_cr = err_cr- sum(sum( target(:,1:end).*log(targetout))) ;
 end
 train_err(epoch)=(numcases*numbatches-counter);
 train_crerr(epoch)=err_cr/numbatches;

%%%%%%%%%%%%%% END OF COMPUTING TRAINING MISCLASSIFICATION ERROR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% COMPUTE TEST MISCLASSIFICATION ERROR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
err=0;
err_cr=0;
counter=0;
[testnumcases testnumdims testnumbatches]=size(testbatchdata);
N=testnumcases;
for batch = 1:testnumbatches%epoch����6�Ժ󣬼������ֻ��������ڸı���
  data = [testbatchdata(:,:,batch)];
  target = [testbatchtargets(:,:,batch)];
  data = [data ones(N,1)];
  w1probs = 1./(1 + exp(-data*w1)); w1probs = [w1probs  ones(N,1)];
  w2probs = 1./(1 + exp(-w1probs*w2)); w2probs = [w2probs ones(N,1)];
  w3probs = 1./(1 + exp(-w2probs*w3)); w3probs = [w3probs  ones(N,1)];
  targetout = exp(w3probs*w_class);
  targetout = targetout./repmat(sum(targetout,2),1,2);%����ά��target��ά��

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
 for batch = 1:numbatches/10
%      fprintf(1,'����ά�� %d ����%d��ʵ�飬�� %d�� ��֤\r',cishu,shiyancishu,jishuqi);
%   fprintf(1,'�� %d�� ��֤\r',jishuqi);
     fprintf(1,'epoch %d batch %d\r',epoch,batch);

%%%%%%%%%%% COMBINE 10 MINIBATCHES INTO 1 LARGER MINIBATCH
%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��ѵ���������ݷŵ�һ���������
 tt=tt+1; 
 data=[];
 targets=[]; 
 for kk=1:10
  data=[data 
        batchdata(:,:,(tt-1)*10+kk)]; 
  targets=[targets
        batchtargets(:,:,(tt-1)*10+kk)];
 end 

%%%%%%%%%%%%%%% PERFORM CONJUGATE GRADIENT WITH 3 LINESEARCHES
%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%���������������Ĺ����ݶȷ�
  max_iter=3;

  if epoch<6  % First update top-level weights holding other weights fixed. %ǰ����ֻ������Ȩֵ
    N = size(data,1);
    XX = [data ones(N,1)];
    w1probs = 1./(1 + exp(-XX*w1)); w1probs = [w1probs  ones(N,1)];
    w2probs = 1./(1 + exp(-w1probs*w2)); w2probs = [w2probs ones(N,1)];
    w3probs = 1./(1 + exp(-w2probs*w3)); %w3probs = [w3probs  ones(N,1)];
    VV = [w_class(:)']';
    Dim = [l4; l5];
    [X, fX i] = minimize(VV,'CG_CLASSIFY_INIT',max_iter,Dim,w3probs,targets);%���룺������㡱Ȩ�أ����㺯��ֵ���ݶ����õķ��̵����֣�ѭ��������������㡱�ͱ�ǩ��ά����������rbm�ڵ㼤��ĸ��ʣ�ѵ�����ı�ǩ
    %��Ȩֵ��Ȩֵ��Ӧ������ֵ
    w_class = reshape(X,l4+1,l5);

  else
    VV = [w1(:)' w2(:)' w3(:)' w_class(:)']';%�Ѹ����Ȩֵ��Ϊһ��������
    Dim = [l1; l2; l3; l4; l5];
    [X, fX i]= minimize(VV,'CG_CLASSIFY',max_iter,Dim,data,targets);
    %��Ȩֵ��Ȩֵ��Ӧ������ֵ
    w1 = reshape(X(1:(l1+1)*l2),l1+1,l2);%��Ȩ���ٷֿ�
    xxx = (l1+1)*l2;
    w2 = reshape(X(xxx+1:xxx+(l2+1)*l3),l2+1,l3);
    xxx = xxx+(l2+1)*l3;
    w3 = reshape(X(xxx+1:xxx+(l3+1)*l4),l3+1,l4);
    xxx = xxx+(l3+1)*l4;
    w_class = reshape(X(xxx+1:xxx+(l4+1)*l5),l4+1,l5);
  end
%%%%%%%%%%%%%%% END OF CONJUGATE GRADIENT WITH 3 LINESEARCHES
%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 end
 save mnistclassify_weights w1 w2 w3 w_class
 save mnistclassify_error test_err test_crerr train_err train_crerr;

end