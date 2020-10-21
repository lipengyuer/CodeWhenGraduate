
%降维
alldata_=x1;
%删去为常量的特征
%删去一直为零的特征
weizhi=find(sum(alldata_)==0);
alldata_(:,weizhi)=[];