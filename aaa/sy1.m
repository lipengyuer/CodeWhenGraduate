function shiyan1=sy1(t)
b=zeros(t,1);
for a=1:t
    b(a)=(217.67*a*exp(-a/447))/447;
end
shiyan1=b;
end