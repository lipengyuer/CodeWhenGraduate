ji1=eye(5);
for m=1:686
    %����
    if(x(m,1)<100)
       zong(m,:)=ji1(1,:);
    elseif(x(m,1)>=100&&x(m,1)<500)
        zong(m,:)=ji1(2,:); 
    elseif(x(m,1)>=500&&x(m,1)<2000)
        zong(m,:)=ji1(3,:); 
    elseif(x(m,1)>=2000&&x(m,1)<5000)
        zong(m,:)=ji1(4,:); 
    else
        zong(m,:)=ji1(5,:); 
    end
end
data=min([zong x(:,3:4)./(repmat(x(:,11),1,2)+0.0000001) x(:,7:10) x(:,12) x(:,13) ones(size(x(:,13)))-x(:,13)],1);