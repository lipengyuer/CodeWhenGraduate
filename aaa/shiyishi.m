function shishi=shiyishi(t)
t1=[1:t];
sd=zeros(1,t);
for a=1:t
    sd(a)=22210*exp(-0.00031569*a)+-22170*exp(-0.000316*a);
end
plot(t1,sd);
shishi=sd;
end