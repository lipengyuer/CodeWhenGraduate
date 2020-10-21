function [net aan sse]=bunianling(x,y)
input=x';
output=y';%输入输出

sui=rand(1,707);
[m n]=sort(sui);
input_train=input(:,n(1:650));
output_train=output(n(1:650));
input_test=input(:,n(651:707));
output_test=output(n(651:707));%训练集和测试集

%  [inputn inputps]=mapminmax(input_train);
%  [outputn outputps]=mapminmax(output_train);%归一化。问题：对【1:20】归一化后怎么前半段是负数？
 
 net=newff(input_train,output_train,[20 5]);
 net.trainParam.epochs=100;
 net.trainParam.lr=0.1;
 net.trainParam.goal=0.00004;
 
 net=train(net,input_train,output_train);
 
%  input_test=mapminmax('apply',input_test,inputn);
 an=sim(net,input_test);
%  plot(an-output_test,'g*');
 sse=sum((an-output_test).^2);
%  BPoutput=mapminmax('reverse',an,outputps);
aan=an;
for m=1:length(an)
    if(an(m)-fix(an(m))>0.5)
    aan(m)=fix(an(m))+1;
    else aan(m)=fix(a(m));
    end
end
 
end