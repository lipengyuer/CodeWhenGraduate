function [net1 count1 count2 monice]=shenjingwangluo_yiyu(xunlian,xunlianmubiao,ceshi,ceshimubiao)
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
output=y;%�������
 
 net=newff(input,output,[30 20]);
 net.trainParam.epochs=100;
 net.trainParam.lr=0.0001;
 net.trainParam.goal=0.00004;
 
  %net=train(net,input_train,output_train);
  net1=train(net,input,output);
%  
% %  input_test=mapminmax('apply',input_test,inputn);
an=sim(net1,input);
%  BPoutput=mapminmax('reverse',an,outputps);
 count1=zeros(1,3);
 xunlianjidaxiao=size(input,1);
for n=1:size(input,2)
    if(an(1,n)>0.5)
        moni(:,n)=1;
    else
        moni(:,n)=0;
       
    end
    if(moni(:,n)~=y(:,n));
        if(moni(n)==0)
            count1(2)=count1(2)+1;
        end
        if(moni(n)==1)
            count1(3)=count1(3)+1;
        end
        count1(1)=count1(1)+1;
    end
end

 moniceshi=sim(net1,ceshi);
 count2=zeros(1,3);
 for n=1:size(ceshi,2)
     
     if(moniceshi(n)>0.5)
        monice(:,n)=1;
    else
        monice(:,n)=0;
     end
 
     if(ceshimubiao(n)~=monice(n)) 
         count2(1)=count2(1)+1;       
         if(monice(1,n)==0)  
             count2(2)=count2(2)+1;
         end
         if(monice(1,n)==1)
             count2(3)=count2(3)+1;
         end 
     end
   
     

end
end