function www=l4(z);
z=z';
z1=z(1,:);
y1=z(2,:);
z2=z(3,:);
y2=z(4,:);
z3=z(5,:);
y3=z(6,:);
z4=z(7,:);
y4=z(8,:);

zz1=[z1 z2 z3 z4];
zz2=[y1 y2 y3 y4];
a=zeros(1,288*4);
b=a;
a(1)=z1(1);
b(1)=y1(1)
for n=2:288*4
    a(n)=a(n-1)+zz1(n);
    b(n)=b(n-1)+zz2(n);
end
lj=[a' b'];
sd=[zz1' zz2'];
www=[lj sd];
end
