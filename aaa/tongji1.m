function leileiji=tongji1(x,y)
a=zeros(10000,1);
aa=a;
z=zeros(10000,1);
zz=z;
for b=1:10000
    for c=1:length(x)
        if((x(c)<=b)&&(x(c)>(b-1)))
            a(b)=a(b)+1;
        end
    end
end
 for b=1:10000
    for c=1:length(x)
        if((y(c)<=b)&&(y(c)>(b-1)))
            z(b)=z(b)+1;
        end
    end
 end
  aa=cumsum(a)/2000;
  zz=cumsum(z)/2000;
  t=log10(1:10000);
  plot(t,aa,'g');hold on,plot(t,zz,'b');
 end