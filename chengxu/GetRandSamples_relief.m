%��ȡ���R �Լ��ҳ��ڽ�����
%D��ѵ����;D1�����1���ݼ�;D2�����2���ݼ�;
%Dh����Rͬ�����ڵ���������;Dm����R��ͬ���������������
function [R,Dh,Dm,L1] = GetRandSamples_relief(D,D1,D2,k)
%�Ȳ���һ���������ȷ��ѡ��������R
r = ceil(1 + (size(D,1)-1)*rand) ;
R=D(r,:); %����r��ѡ�У���ֵ��R
d1 = zeros(1,0) ;%����0,d1����R�ľ��룬�ǲ���ͬ���������ж�
d2 = zeros(1,0) ;%����0,d2����R�ľ���
%D1,D2���ȴ���Ĳ�������ReliefF�������Ѿ��������
for i =1:size(D1,1)   %����R��D1�ľ���
    %      d1(1,i) = Distance(R,D1(i,:)) ;
    %     d1(1,i) = getdistanceof2vectors(R(:,1:end-1),D1(i,1:end-1)) ;%(R,D1(i,:)) ;%
    d1(1,i) = getdistanceof2vectors_cos(R(:,1:end-1),D1(i,1:end-1)) ;%(R,D1(i,:)) ;%
    
end
for j = 1:size(D2,1)%����R��D2�ľ���
    %      d2(1,j) = Distance(R,D2(j,:)) ;
    %     d2(1,j) = getdistanceof2vectors(R(:,1:end-1),D2(j,1:end-1));%(R,D2(j,:)) ;
    d2(1,j) = getdistanceof2vectors_cos(R(:,1:end-1),D2(j,1:end-1));%(R,D2(j,:)) ;
end
[v1,L1] = sort(d1) ;%d1����
[v2,L2] = sort(d2) ;%d2����
if R(1,size(R,2))==1 %���R����=2��������
    H = D1(L1(1,2:k+1),:);%1:end-1) ; %L1������R����ľ���ı�ţ���ֵ��H��
    M = D2(L2(1,1:k),:);%1:end-1) ; %v2(1,1:k) ;
else
    H = D1(L1(1,1:k),:);%1:end-1);
    M = D2(L2(1,2:k+1),:);%1:end-1);
end
%ѭ������ÿ2����������֮����������룺(����1-����2)/(max-min)
for i = 1:size(H,1)
    for j =1 :size(H,2)
        Dh(i,j) = abs(H(i,j)-R(1,j))/(max(D(:,j))-min(D(:,j))+0.000001); % �������ݷ�Χ����1-10������max-min=9Ϊ�̶�
        Dm(i,j) = abs(M(i,j)-R(1,j))/(max(D(:,j))-min(D(:,j))+0.000001);%����ǩҲ���ˣ������ڸ���Ȩֵʱ������ԣ���Ӱ�������
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

             