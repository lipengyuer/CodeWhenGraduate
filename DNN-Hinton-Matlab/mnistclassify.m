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


% This program pretrains a deep autoencoder for MNIST dataset
% You can set the maximum number of epochs for pretraining each layer
% and you can set the architecture of the multilayer net.
%1.数据格式要求：输入输出都是数字（0-1还是不限？）为元素的矩阵
%2.数据的存储位置需要输入到makebatches中；
%3.数据维度的不同要求调整的参数有：makebatches11,13和43行,45下边一行；backpropclassify的4,14，36，62行；CG_CLASSIF
%  Y_INT的2行
% clear all
% close all
maxepoch=15; 
%  numhid=jiedianshu1(m11); numpen=jiedianshu2(m22); numpen2=jiedianshu3(m33); %500 500 2000
  numhid=8; numpen=5; numpen2=5; %500 500 2000

% fprintf(1,'Converting Raw files into Matlab format \n');
% converter; 
% makebatches_yiyu11;
% makebatches_yiyu_afternfoldcrossval;
    
fprintf(1,'Pretraining a deep autoencoder. \n');
fprintf(1,'The Science paper used 50 epochs. This uses %3i \n', maxepoch);


% makebatches_zhanghushibie;
% makebatches_yiyu_tenfold;
makebatches_yiyu11;
% makebatches;
% makebatches;
% shuzishibiemakebatches;
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

backpropclassify; 

