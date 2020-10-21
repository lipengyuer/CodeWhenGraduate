function ww=l(z);
z=z';
z1=z(1,:);
y1=z(2,:);
z2=z(3,:);
y2=z(4,:);
z3=z(5,:);
y3=z(6,:);
z4=z(7,:);
y4=z(8,:);
z5=z(9,:);
y5=z(10,:);
z6=z(11,:);
y6=z(12,:);
zz1=[z1 z2 z3 z4 z5 z6];
zz2=[y1 y2 y3 y4 y5 y6];
a=zeros(1,288*6);
b=a;
a(1)=z1(1);
b(1)=y1(1)
for n=2:288*6
    a(n)=a(n-1)+zz1(n);
    b(n)=b(n-1)+zz2(n);
end
lj=[a' b'];
sd=[zz1' zz2'];
ww=[lj sd];
end
