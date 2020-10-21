function shiyan2=sy2(t)
b=zeros(t,1);
for a=1:t
    b(a)=(-2198.5*exp(-a/363.99))+(1.63*exp(-a/24.071))+(-2198.5*exp(-a/442.6));
end
shiyan2=b;
end