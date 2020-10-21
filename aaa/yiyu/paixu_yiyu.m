function [w1]=paixu_yiyu(w)
     if ~isempty(w);
          xushu=zeros(length(w),4);
       
    for m=1:length(w)
        
        if(w(m,2)==1||w(m,2)==3||w(m,2)==5||w(m,2)==7||w(m,2)==8||w(m,2)==10||w(m,2)==12)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*10+fix(w(m,4))*600+24*w(m,3)*60+24*31*w(m,2)*6000+w(m,1)*365*24*31*60000;
        end
        
         if(w(m,2)==4||w(m,2)==6||w(m,2)==9||w(m,2)==11)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*10+fix(w(m,4))*600+24*w(m,3)*600+24*30*w(m,2)*6000+w(m,1)*365*24*31*60000;
         end
         
         if(w(m,2)==2)%润年要小心
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*10+fix(w(m,4))*600+24*w(m,3)*600+24*28*w(m,2)*6000+w(m,1)*365*24*31*60000;
         end
       fprintf('%d\r\n',m);
    end
 
    shuichi=[w(:,1:end) xushu];
    w2=sortrows(shuichi,5);
    w1=[w2(:,1:4)];
       
     end   
 end

   
