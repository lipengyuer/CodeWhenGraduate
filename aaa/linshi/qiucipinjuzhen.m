x=load('C:\Users\admini\Desktop\cipin1.txt');%存储词频数的位置
he = sum(x,2);
for m = 1:7
    y(m,:) = x(m,:)/he(m);%计算词频
end