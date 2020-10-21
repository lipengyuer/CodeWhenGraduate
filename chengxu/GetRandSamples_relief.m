%获取随机R 以及找出邻近样本
%D：训练集;D1：类别1数据集;D2：类别2数据集;
%Dh：与R同类相邻的样本距离;Dm：与R不同类的相邻样本距离
function [R,Dh,Dm,L1] = GetRandSamples_relief(D,D1,D2,k)
%先产生一个随机数，确定选定的样本R
r = ceil(1 + (size(D,1)-1)*rand) ;
R=D(r,:); %将第r行选中，赋值给R
d1 = zeros(1,0) ;%先置0,d1是与R的距离，是不是同类在下面判断
d2 = zeros(1,0) ;%先置0,d2是与R的距离
%D1,D2是先传入的参数，在ReliefF函数中已经分类好了
for i =1:size(D1,1)   %计算R与D1的距离
    %      d1(1,i) = Distance(R,D1(i,:)) ;
    %     d1(1,i) = getdistanceof2vectors(R(:,1:end-1),D1(i,1:end-1)) ;%(R,D1(i,:)) ;%
    d1(1,i) = getdistanceof2vectors_cos(R(:,1:end-1),D1(i,1:end-1)) ;%(R,D1(i,:)) ;%
    
end
for j = 1:size(D2,1)%计算R与D2的距离
    %      d2(1,j) = Distance(R,D2(j,:)) ;
    %     d2(1,j) = getdistanceof2vectors(R(:,1:end-1),D2(j,1:end-1));%(R,D2(j,:)) ;
    d2(1,j) = getdistanceof2vectors_cos(R(:,1:end-1),D2(j,1:end-1));%(R,D2(j,:)) ;
end
[v1,L1] = sort(d1) ;%d1排序，
[v2,L2] = sort(d2) ;%d2排序
if R(1,size(R,2))==1 %如果R样本=2，是良性
    H = D1(L1(1,2:k+1),:);%1:end-1) ; %L1中是与R最近的距离的编号，赋值给H。
    M = D2(L2(1,1:k),:);%1:end-1) ; %v2(1,1:k) ;
else
    H = D1(L1(1,1:k),:);%1:end-1);
    M = D2(L2(1,2:k+1),:);%1:end-1);
end
%循环计算每2个样本特征之间的特征距离：(特征1-特征2)/(max-min)
for i = 1:size(H,1)
    for j =1 :size(H,2)
        Dh(i,j) = abs(H(i,j)-R(1,j))/(max(D(:,j))-min(D(:,j))+0.000001); % 本文数据范围都是1-10，所以max-min=9为固定
        Dm(i,j) = abs(M(i,j)-R(1,j))/(max(D(:,j))-min(D(:,j))+0.000001);%类别标签也算了，但是在更新权值时将其忽略，不影响最后结果
    end
end
end

% function getdistanceof2vectors=getdistanceof2vectors(v1,v2)
% distanceofvectors=0;
% for m=1:length(v1)
%     distanceofvectors=distanceofvectors+(v1(m)-v2(m)).^2;
% end
% getdistanceof2vectors=distanceofvectors;
% end

function getdistanceof2vectors=getdistanceof2vectors_cos(v1,v2)
distanceofvectors=0;
for m=1:length(v1)
    distanceofvectors=distanceofvectors+(v1(m)-v2(m)).^2;
end
getdistanceof2vectors=distanceofvectors/(abs(v1*v1')*abs(v2*v2'));
end

             