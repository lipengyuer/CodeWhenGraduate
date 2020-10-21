
ji=eye(100);
for m=1:100
    for n=1:400
        if(zongshu(n)>=(m*100-100+1)&&zongshu(n)<(m*100))
            lable(n,:)=ji(m,:);
        end
    end
end
    