function [xx jishu qishi]=cunchushijian_zhanghushibie(tianshu,yueshu,x,tian,yue,q)

jishu=zeros(tianshu,1);

for a=1:tianshu
    for n=1:yueshu
     for m=1:q
        if(x(m,2)==yue(n)&&x(m,3)==tian(a))
            jishu(a)=jishu(a)+1;
        end
     end
    end
end
qishi=1;
% count=zeros(100,1);
xxx=zeros(3000,800);
xxx(1,1)=x(1,4);
x1=[x(:,4);-1];
gg=1;
for m=1:q
   
    if(x1(m)<=x1(m+1))
        xxx(qishi,gg)=x1(m);
        qishi=qishi+1;
    else  
%       qishi=qishi+1;
      xxx(qishi,gg)=x1(m);
      gg=gg+1;
      qishi=1;
    
    end
end

xx=xxx;

end