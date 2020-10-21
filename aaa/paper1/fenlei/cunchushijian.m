function [xx xxx tianshu jishu qishi count]=cunchushijian(tianshu,yueshu,x,tian,yue,q)
xx=zeros(10000,500);
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
qishi=2;
count=zeros(100,1);
xxx=zeros(10000,8);
xxx(1,1)=x(1,4);
gg=1;
for m=2:(q-3)
    if(x(m+1,4)>=x(m,4))
        xxx(qishi,gg)=x(m,4);
        qishi=qishi+1;
    else
      
        gg=gg+1;
     qishi=1;
       
    end
end
[chang kuan]=size(xxx);
xx(1:chang,1:kuan)=xxx;
% m=1;
%         xxx(1:(jishu(m)-qishi+1),m)=x(qishi:jishu(m),4);
%     qishi=qishi+jishu(m);
%     count(m)=qishi;
%     m=2;
%         xxx(1:(jishu(m)-qishi+1),m)=x(qishi:jishu(m),4);
%     qishi=qishi+jishu(m);
%     count(m)=qishi;

% % %   for a=1:tianshu
% % %     
% % %     for d=1:yueshu
% % %         jishuqi=1;
% % %       for c=1:q
% % %         if(x(c,2)==yue(d)&&x(c,3)==tian(a))
% % %            xx(jishuqi,a)=x(c,4);
% % %            jishuqi=jishuqi+1;
% % %         end
% % %       end
% % %       % xx(:,a)=sort(xx(:,a));
% % %     end
% % %   end
%   xx=xx(2:10000,50);
%   xxx=zeros(50,1);
%   xx=[xx;xxx];
%将各天的时刻存储在一个矩阵xx的不同列中
end