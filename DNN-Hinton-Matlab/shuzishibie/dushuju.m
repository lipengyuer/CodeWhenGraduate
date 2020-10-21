[a1]=textread('C:\Users\admini\Downloads\test (1).txt','%s','headerlines',1);
x=zeros(28000,784);
for m=1:length(a1)
    x(m,:)=str2num(a1{m});
    fprintf('one%d\n',m);
end
xx=x;%x(:,2:785);
save C:\Users\admini\Desktop\aaaaa\shuzishibie\testdata.mat xx
% ji=eye(10);
% y=zeros(42000,10);
% for m=1:length(x(:,1))
%     y(m,:)=ji(x(m,1)+1,:);
%      fprintf('two%d\n',m);
% end
% 
% save C:\Users\admini\Desktop\aaaaa\shuzishibie\label.mat y
% 
% mnistclassify;