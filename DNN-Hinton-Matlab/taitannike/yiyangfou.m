  Input = alldata;%alldata是新来的数据，内容为类型未知样本的属性值
%   mubiao =test_y;
  Counter = 0;
  Error = 0;
  NumofSamples = 1325;%样本个数
  Input = [Input ones(N,1)];
%%%%%%%%%%%%%%%%%分类器开始计算%%%%%%%%
  w1p = 1./(1 + exp(-Input*w1)); w1p = [w1p  ones(N,1)];
  w2p = 1./(1 + exp(-w1p*w2)); w2p = [w2p ones(N,1)];
  w3p = 1./(1 + exp(-w2p*w3)); w3p = [w3p  ones(N,1)];
  
  Outputof3rdRBM = exp(w3p*w_class);%第三层RBM的输出
  OutputofSoftmax = mubiaoout./repmat(sum(Outputof3rdRBM,2),1,2);%softmax的输出
% %%%%%%%%%%分类器计算结束%%%%%

%%%%%%%%%%%开始将概率值01化%%%%%%%%%%%%%%
BinaryOutputofSoftmax=zeros(size(OutputofSoftmax));%BinaryOutputofSoftmax存储01化后的输出
ActualOutput=zeros(size(OutputofSoftmax,1),1);
  for n=1:N
      for m=1
          if(OutputofSoftmax(n,m)>0.5)
             BinaryOutputofSoftmax(n,m)=1;    
          elseif(OutputofSoftmax(n,m)<=0.5)
              BinaryOutputofSoftmax(n,m)=0;
          else BinaryOutputofSoftmax(n,m)=nan;
          end
      end
  end
  %%%%%%%%%%%结束将概率值01化%%%%%%%%%%%%%%
 