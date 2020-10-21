function [zflj,fslj]=leijia(z);
z1=z(1,:);
z2=z(2,:);
b1=zeros(1,length(z1));
b2=b1;
b1(1)=z1(1);
b2(1)=z2(1)
for a=2:length(z1)
    b1(a)=b1(a-1)+z1(a);
    b2(a)=b2(a-1)+z2(a);
end
zflj=b1';
fslj=b2';
end
