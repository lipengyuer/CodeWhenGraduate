% function Woffeatures = relieftosearchmyfeatures(data,m)%relief算法搜索较优属性。data=【所有属性 标签】；返回所需属性所在列数.m为抽样次数
function [Woffeatures]= relieftosearchmyfeatures(alldata,m)

%  data=alldata(:,1:end-1);
% clear;
% m=50;
% load C:\Users\admini\Desktop\woca11.mat;
% alldata=x;
W=zeros(1,size(alldata,2)-1);
%   Woffeatures(n,:)=W;
    label_wantedsample=zeros(1,m);
    nearestsample1=zeros(1,size(alldata,2)-1);
    nearestsample0=zeros(1,size(alldata,2)-1);
for n=1:m
    data=alldata;
    numofwantedsample=randperm(size(data,1));
    numofwantedsample=numofwantedsample(1);
    wantedsample=data(numofwantedsample,:);
     label_wantedsample(n)=wantedsample(end);
    wantedsample=wantedsample(1,1:end-1);
   
    data(numofwantedsample,:);
    
    data(numofwantedsample,:)=[];
    data1=data(data(:,end)==1,:);
    data0=data(data(:,end)==0,:);
    input1=data1(:,1:end-1);
    input0=data0(:,1:end-1);
    howfar1=zeros(1,size(input1,1));
    howfar0=zeros(1,size(input0,1));
        for jishuqi=1:size(input1,1)
%               fprintf('%d %d %d',size(input1,2),size(wantedsample,2),size(howfar1,2));
            howfar1(1,jishuqi)=input1(jishuqi,:)*wantedsample';
           
              fprintf('.');
        end
         for jishuqi=1:size(input0,1)
            howfar0(1,jishuqi)=input0(jishuqi,:)*wantedsample';
             
              fprintf('.');
         end
             nearestsample1=input1(howfar1==min(howfar1),:);
             nearestsample0=input0(howfar0==min(howfar0),:);
        
        if(label_wantedsample(m)==1)
             
           for A=1:size(data,2)-1
               W(A)=W(A)-abs(wantedsample(A)-nearestsample1(A))/(m*(max(input1(:,A))-min(input1(:,A)))) +abs(wantedsample(A)-nearestsample0(A))/(m*(max(input0(:,A))-min(input0(:,A))));
                fprintf('.');
           end
        elseif(label_wantedsample(m)==0)
            for A=1:size(data,2)-1
                W(A)=W(A)-abs(wantedsample(A)-nearestsample0(A))/(m*(max(input0(:,A))-min(input0(:,A)))) +abs(wantedsample(A)-nearestsample1(A))/(m*(max(input1(:,A))-min(input1(:,A))));
                fprintf('.');
           end
        end
        fprintf('\n');
        fprintf('第n=%d\n',n);
        Woffeatures(n,:)=W;
end

% end
