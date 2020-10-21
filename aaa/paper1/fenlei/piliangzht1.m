function [ wenjianming flag count]=piliangzht1(x)
   w=x;
   xushu=zeros(length(w),1);
   for m=1:length(w)
        
        if(w(m,2)==1||w(m,2)==3||w(m,2)==5||w(m,2)==7||w(m,2)==8||w(m,2)==10||w(m,2)==12)
          xushu(m,1)=(w(m,4)-fix(w(m,4)))*(10/6)+fix(w(m,4))+24*w(m,3)+24*31*w(m,2);
        end
        
         if(w(m,2)==4||w(m,2)==6||w(m,2)==9||w(m,2)==11)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*(10/6)+fix(w(m,4))+24*w(m,3)+24*30*w(m,2);
         end
         
         if(w(m,2)==2)%润年要小心
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*(10/6)+fix(w(m,4))+24*w(m,3)+24*28*w(m,2);
        end

    end
 

    shuichi=[xushu w];
    shuichi1=sortrows(shuichi,1);
  
    for m=1:length(w)
        
 

end