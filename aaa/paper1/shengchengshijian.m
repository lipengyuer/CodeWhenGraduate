function shijian=shengchengshijian(tianshu)
x=zeros(tianshu*24,1);

for b=1:tianshu
    for a=0:23
    x(b*24-24+a+1)=a;
    end
end
shijian=x;
end