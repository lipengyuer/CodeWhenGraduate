matrix=sparse([]);
for i=m+1:N- m
for j=i- m:i+m
matrix(i,j)=1;
end
end
for i=1:m
for j=1:i+m
matrix(i,j)=1;
end
end
for i=N- m+1:N
for j=i- m:N
matrix(i,j)=1;
end
end
for i=1:m
for j=N- m+i:N
matrix(i,j)=1;matrix(j,i)=1;
End
end
%��ʱ��ı�����,�ӽڵ�1��N- m- 1
for i=1:N- m- 1
for j=i+1:i+m
r=rand(1);
if r<=p
nconect=find(matrix(i,:)==0);
1=ceil(length(unconect)*rand(1));
matrix(i,unconect(r1))=1;
matrix(unconect(r1),i)=1;
matrix(i,j)=0; matrix(j,i)=0;
end
end
nd
%��ʱ��ı���������,�ӽڵ�N- m��N- 1
or i=N- m+1:N- 1
for j=[i+1:N 1:i- N+m]
r=rand(1);
if r<=p
unconect=find(matrix(i,:)==0);
1=ceil(length(unconect)*rand(1));
matrix(i,unconect(r1))=1;
matrix(unconect(r1),i)=1;
matrix(i,j)=0;matrix(j,i)=0;
end
end
end
%��ʱ��ı���������,��
or i=N
for j=1:m
r=rand(1);
if r<=p
unconect=find(matrix(i,:)==
1=ceil(length(unconect)*r
matrix(i,unconect(r1))=1;
matrix(unconect(r1),i)=1;
matrix(i,j)=0;matrix(j,i)=0
end
end
end
%�ָ�С����������ڽ�
or m=1:N
matrix(m,m)=0;
end
%�洢�ڽӾ���
save data matrix;
oc %�������