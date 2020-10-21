function [y4]=paijiu(xi,y)
yyy=zeros(362880,9);
% aa=0;
jishuqi=0;
as=find(xi'~=0);
len=length(as);
flag=zeros(len,1);
ff=0;
for l=1:362880
    if (len~=0)
        for a=1:length(as)
            flag(a)=y(l,a)-xi(a);
        end
        ff=length(find(flag==0));
        if (ff==length(as))
         yyy(l,:)=y(l,:);
        end
    end
   
%     if(prod(y(l,:)-[xi(1,:) xi(2,:) xi(3,:)])==0)
% %        yy(362881-l,:)=[];
%     yyy(l,:)=y(l,:);
%   
%     end
    %     for m=1:3
%      for n=1:3
%         if (xi(m,n)~=0)
%                 if(y(l,n+(m-1)*3)~=xi(m,n))
%                        yy(362881-l,:)=[];
%                 end
%                 aa=xi(m,n);
%         end
%      end
%     end
end
% for l=1:362880
%     if(yyy==0)
% %        yy(362881-l,:)=[];
%     yy(362881-l,:)=[];
%     end
% end
y4=sortrows(yyy,-1);
for q=1:362880
    if(y4(q,1)==0)
        jishuqi=q;
        break;
    end
  
end
% 
y4(jishuqi:362880,:)=[];
% 
% shuchu1=sortrows(yyy,1);
% 
% shuchu2=jishuqi;
% shuchu3=y4;
end