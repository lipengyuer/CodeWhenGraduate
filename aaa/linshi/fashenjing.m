function [net an]=fashenjing
x1=100*rand(1,2000);
x2=100*rand(1,2000);
y=x1.^2+x2.^2;


input=[x1;x2];
output=y;%�������

sui=rand(1,2000);
[m n]=sort(sui);
input_train=input(:,n(1:1900));
output_train=output(n(1:1900));
input_test=input(:,n(1901:2000));
output_test=output(n(1901:2000));%ѵ�����Ͳ��Լ�

%  [inputn inputps]=mapminmax(input_train);
%  [outputn outputps]=mapminmax(output_train);%��һ�������⣺�ԡ�1:20����һ������ôǰ����Ǹ�����
 
 net=newff(input_train,output_train,[5]);
 net.trainParam.epochs=100;
 net.trainParam.lr=0.1;
 net.trainParam.goal=0.00004;
 
 net=train(net,input_train,output_train);
 
%  input_test=mapminmax('apply',input_test,inputn);
 an=sim(net,input_test);
%  BPoutput=mapminmax('reverse',an,outputps);
 
end