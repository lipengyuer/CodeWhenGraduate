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


function [f, df woqu] = CG_CLASSIFY(VV,Dim,XX,target)%XX是data；target即是训练集的标签

l1 = Dim(1);
l2 = Dim(2);
l3= Dim(3);
l4= Dim(4);
l5= Dim(5);
N = size(XX,1);

% Do decomversion.
 w1 = reshape(VV(1:(l1+1)*l2),l1+1,l2);
 xxx = (l1+1)*l2;
 w2 = reshape(VV(xxx+1:xxx+(l2+1)*l3),l2+1,l3);
 xxx = xxx+(l2+1)*l3;
 w3 = reshape(VV(xxx+1:xxx+(l3+1)*l4),l3+1,l4);
 xxx = xxx+(l3+1)*l4;
 w_class = reshape(VV(xxx+1:xxx+(l4+1)*l5),l4+1,l5);


  XX = [XX ones(N,1)];
  w1probs = 1./(1 + exp(-XX*w1)); w1probs = [w1probs  ones(N,1)];
  w2probs = 1./(1 + exp(-w1probs*w2)); w2probs = [w2probs ones(N,1)];
  w3probs = 1./(1 + exp(-w2probs*w3)); w3probs = [w3probs  ones(N,1)];
woqu=w3probs;
  targetout = exp(w3probs*w_class);
  targetout = targetout./repmat(sum(targetout,2),1,2);%第三维是target的维数

  f = -sum(sum(target(:,1:end).*log(targetout))) ;

IO = (targetout-target(:,1:end));%计算实际输出值与标签之间的差距
Ix_class=IO; 
dw_class =  w3probs'*Ix_class; %差距乘以活化概率=？

Ix3 = (Ix_class*w_class').*w3probs.*(1-w3probs);%上面的误差传到这一层，还乘以w3probs.*(1-w3probs)，这算什么---是活化函数对w3probs（权值在此时输入下的总和）的导数；得到误差的梯度（这层是非线性的，fai的导数按规矩来）
Ix3 = Ix3(:,1:end-1);
dw3 =  w2probs'*Ix3;

Ix2 = (Ix3*w3').*w2probs.*(1-w2probs); 
Ix2 = Ix2(:,1:end-1);
dw2 =  w1probs'*Ix2;

Ix1 = (Ix2*w2').*w1probs.*(1-w1probs); 
Ix1 = Ix1(:,1:end-1);
dw1 =  XX'*Ix1;

df = [dw1(:)' dw2(:)' dw3(:)' dw_class(:)']'; 
