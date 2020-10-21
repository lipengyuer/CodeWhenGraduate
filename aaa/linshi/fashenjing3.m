% data=[zhengchang zeros(592,1) ones(592,1);laji ones(987,1) zeros(987,1)];
% data=[a,alldata(:,end-1:end)];
% load alldata1
% data=alldata1;
data=alldata4yiyu;
shuhao=randperm(381);
data1=[shuhao' data];
data2=sortrows(data1,1);
data3=data2(:,2:end);
alldata1=data3;
trainx=alldata1(1:300,1:end-2);
testx=alldata1(301:end,1:end-2);
trainy=alldata1(1:300,end-1);
testy=alldata1(301:end,end-1);

net=newff(trainx',trainy',[50 20]);
net=train(net,trainx',trainy');

an=sim(net,testx');
ann=[];
for jishuqi=1:length(an)
    if(an(1,jishuqi)>0.5)
        ann(jishuqi,1)=1;
    else ann(jishuqi,1)=0;
    end
end

error=sum(abs(ann-testy(:,1)));
