function [w2]=paixu1(x) 

  
   w=x;
   if ~isempty(w)
    for m=1:length(w)
        
        if(w(m,2)==1||w(m,2)==3||w(m,2)==5||w(m,2)==7||w(m,2)==8||w(m,2)==10||w(m,2)==12)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*(1000/6)+fix(w(m,4))*100+24*w(m,3)*100+24*31*w(m,2)*100;
        end
        
         if(w(m,2)==4||w(m,2)==6||w(m,2)==9||w(m,2)==11)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*(1000/6)+fix(w(m,4))*100+24*w(m,3)*100+24*30*w(m,2)*100;
         end
         
         if(w(m,2)==2)%润年要小心
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*(1000/6)+fix(w(m,4))*100+24*w(m,3)*100+24*28*w(m,2)*100;
        end
%         xuhao(m)=strcat(str1,'.');
%         xuhao1(m)=stracat(xuhao(m),str2);
    end
 

    shuichi=[xushu w];
    w1=sortrows(shuichi,1);
    w2=w1(:,2:6);
   end
% 
%   fid=fopen(ss,'r+');
%     for m=1:length(w1)
%     
%     fprintf(fid,'%d ',w1(m,2));
%     fprintf(fid,'%d ',w1(m,3));
%     fprintf(fid,'%d ',w1(m,4));
%     fprintf(fid,'%d\n',w1(m,5));
%        
%     end
%      fclose(fid);   
%      end
%      
%      if isempty(w)
%          flag=flag+1;
%          wenjianming(n)=1;
%      end
 end

