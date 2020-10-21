function [DD DDD]=duizhao
% Df = cell(1,10);
for d=0:9,
%  fclose(Df{d+1});
  DD = load(['digit' num2str(d) '.ascii'],'-ascii');
  xushu=randperm(length(DD));
  D(:,:)=DD(xushu(1:100),:);
  fprintf('%5d Digits of class %d\n',size(D,1),d);
  save(['digit' num2str(d) '.mat'],'D','-mat');%digit0存储的是数字0对应的所有数据信息
  
end;
D=[];
for d=0:9,
 % fclose(Df{d+1});%关闭Df{d+1}，停止可写状态
  DDD = load(['test' num2str(d) '.ascii'],'-ascii');%将test' num2str(d) '.ascii以ascii格式读到D中
  xushu=randperm(length(DDD));
  D(:,:)=DDD(xushu(1:50),:);
  fprintf('%5d Digits of class %d\n',size(D,1),d);
   
  save(['test' num2str(d) '.mat'],'D','-mat');%将D中信息存储为到mat文件中
end;