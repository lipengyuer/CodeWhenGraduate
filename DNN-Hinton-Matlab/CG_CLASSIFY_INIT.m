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


function [f, df woqu] = CG_CLASSIFY_INIT(VV,Dim,w3probs,target)
l1 = Dim(1);
l2 = Dim(2);
N = size(w3probs,1);
% Do decomversion.
  w_class = reshape(VV,l1+1,l2);
  w3probs = [w3probs  ones(N,1)];  
woqu=w3probs;

%%softmax
  targetout = exp(w3probs*w_class);
  targetout = targetout./repmat(sum(targetout,2),1,2);%第三维是target的维数

  f = -sum(sum( target(:,1:end).*log(targetout))) ;%对应元素相乘，再求和求和；这是要最优化的函数？？？？？？？？误差函数不是E=0.5*（标记-实际值）^2,？？？
  %用E的话调参不进行
IO = (targetout-target(:,1:end));%一般定义误差E=0.5*（标记-实际值）^2,，（0.5是为了求导后好看），，，，，，E的导数=标记-实际值。
Ix_class=IO; 
dw_class =  w3probs'*Ix_class; %第三层的输出乘以计算值与标签值的差---这就是所要求的梯度(对应权值下降的方向)；w3probs是计算起始点;%%%%%%%%%%%每一个权值对应的所有样本对应的梯度相加（这层是线性的，fai的导数等于1）

df = [dw_class(:)']'; 

