% yitianzhuanfashu=[];
% xx=qwe1;
% for a=1:203
%     for b=1:(length(qwe1)-1)
%         if(qwe1(b,a)>qwe1(b+1,a))
%         yitianzhuanfashu(a)=b;
%         end
%     end
% end%yitianzhuanfashu存储各天的转发次数

x=shijian1;
tianshu=203;
yushu=9;
q=986;
jishu=zeros(203,1);
% for a=1:tianshu
%     for n=1:yueshu
%      for m=1:q
%         if(x(m,2)==yue(n)&&x(m,3)==tian(a))
%             jishu(a)=jishu(a)+1;
%         end
%      end
%     end
% end
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
