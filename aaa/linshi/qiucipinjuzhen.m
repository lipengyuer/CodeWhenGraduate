x=load('C:\Users\admini\Desktop\cipin1.txt');%�洢��Ƶ����λ��
he = sum(x,2);
for m = 1:7
    y(m,:) = x(m,:)/he(m);%�����Ƶ
end