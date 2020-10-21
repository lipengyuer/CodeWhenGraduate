function duibi=dui(x,y)
z=zeros(size(x));
for n=1:980
    for m=1:784
        if(x(n,m)<30)
            z(n,m)=0;
        else z(n,m)=1;
        end
    end
end
duibi=z-y;
end