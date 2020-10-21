function [net1 count count1 monice]=fashenjing1(xunlian,xunlianmubiao,ceshi,ceshimubiao)
%x1=rand(1,2000)';
% y=zeros(2000,1);
x1=xunlian';
y=xunlianmubiao';
ceshi=ceshi';
ceshimubiao=ceshimubiao';
% for m=1:2000
%     y(m)=x1(m)^2;
% end

input=[x1];
output=y;%输入输出

% sui=rand(1,2000);
% [m n]=sort(sui);
% input_train=input(n(1:1900),1);
% output_train=output(n(1:1900),1);
% input_test=input(n(1901:2000),:);
% output_test=output(n(1901:2000),:);%训练集和测试集

 
 net=newff(input,output,[50 20]);
 net.trainParam.epochs=100;
 net.trainParam.lr=0.0001;
 net.trainParam.goal=0.00004;
 
  %net=train(net,input_train,output_train);
  net1=train(net,input,output);
%  
% %  input_test=mapminmax('apply',input_test,inputn);
an=sim(net1,input);
% %  BPoutput=mapminmax('reverse',an,outputps);
moni=an;
count=0;

for n=1:700
    if(an(1,n)>0.5)
        moni(:,n)=[1;0];
    else
        moni(:,n)=[0;1];
       
    end
    if(moni(:,n)~=y(:,n));
    count=count+1;
    end
end

 moniceshi=sim(net1,ceshi);
 monice=moniceshi;
 count1=0;
 for n=1:100
     
    if(moniceshi(1,n)>0.5)
        monice(:,n)=[1;0];
    else
        monice(:,n)=[0;1];
       
    end
    if(monice(:,n)==ceshimubiao(:,n));
    count1=count1+1;
    end
end
end