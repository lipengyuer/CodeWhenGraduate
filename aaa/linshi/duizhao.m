function [DD DDD]=duizhao
% Df = cell(1,10);
for d=0:9,
%  fclose(Df{d+1});
  DD = load(['digit' num2str(d) '.ascii'],'-ascii');
  xushu=randperm(length(DD));
  D(:,:)=DD(xushu(1:100),:);
  fprintf('%5d Digits of class %d\n',size(D,1),d);
  save(['digit' num2str(d) '.mat'],'D','-mat');%digit0�洢��������0��Ӧ������������Ϣ
  
end;
D=[];
for d=0:9,
 % fclose(Df{d+1});%�ر�Df{d+1}��ֹͣ��д״̬
  DDD = load(['test' num2str(d) '.ascii'],'-ascii');%��test' num2str(d) '.ascii��ascii��ʽ����D��
  xushu=randperm(length(DDD));
  D(:,:)=DDD(xushu(1:50),:);
  fprintf('%5d Digits of class %d\n',size(D,1),d);
   
  save(['test' num2str(d) '.mat'],'D','-mat');%��D����Ϣ�洢Ϊ��mat�ļ���
end;