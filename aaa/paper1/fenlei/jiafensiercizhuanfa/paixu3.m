function [a1]=paixu3 
 wenjianming=zeros(201,1);
 
 for n=1:200%txt文件名的范围
  
  
        s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',int2str(n));%连接文件夹名和txt文件名
        ss=strcat(s,'.txt');
        if(exist(ss,'file')==2)
    [a1,a2,a3,a4]=textread(ss,'%s%s%s%s','headerlines',0); 
       if(length(a1)>40000)
              a1=[];
              
       end
       
     if ~isempty(a1);
         [w]=zifutihuan3(a1,a2,a3,a4);
          xushu=zeros(length(w));
       
    for m=1:length(w)
        
        if(w(m,2)==1||w(m,2)==3||w(m,2)==5||w(m,2)==7||w(m,2)==8||w(m,2)==10||w(m,2)==12)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*100+fix(w(m,4))*60000+24*w(m,3)*60000+24*31*w(m,2)*6000000;
        end
        
         if(w(m,2)==4||w(m,2)==6||w(m,2)==9||w(m,2)==11)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*100+fix(w(m,4))*60000+24*w(m,3)*60000+24*30*w(m,2)*6000000;
         end
         
         if(w(m,2)==2)%润年要小心
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*100+fix(w(m,4))*60000+24*w(m,3)*60000+24*28*w(m,2)*6000000;
         end
       fprintf('1\r\n');
    end
 
    shuichi=[w(:,2:6) xushu];
    w2=sortrows(shuichi,6);
    w1=[w(:,1) w2];

    fid=fopen(ss,'r+');
    for m=1:length(w)
    fprintf('2\r\n');
    fprintf(fid,'%d ',w1(m,1));
    fprintf(fid,'%d ',w1(m,2));
    fprintf(fid,'%d ',w1(m,3));
    fprintf(fid,'%d ',w1(m,4));
    fprintf(fid,'%d ',w1(m,5));
    fprintf(fid,'%d\r\n',w1(m,6));
       
    end
     fclose(fid);   
     end
     if isempty(a1)
         wenjianming(n)=1;
     end
   
        end
 end
end
    