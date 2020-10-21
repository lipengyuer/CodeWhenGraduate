function [w count w1 shuichi flag]=paixu2
% fid=open('C:\Users\admini\Desktop\aaaaa\qwe\1.txt','r');
% [a b c]=textread(fid,'d% d% d%');
% fclose(fid);
  %s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\',int2str(n));%连接字符串
    %r=load(strcat(s,'.txt'));
%      w=strcat('y',int2str(n));
%      w=load(strcat(s,'.txt'));
   % y(n)=eval(s);
     
     %hezi=hezi+piliangzht(load(strcat(s,'.txt')));
     count=0;
     flag=0;
     wenjianming=zeros(200,1);
    % w=load(strcat(s,'.txt'));
 for n=1:200%txt文件名的范围
     fprintf('%d\n',n);
     count=count+1;
   xushu=0;
   s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',int2str(n));%连接文件夹名和txt文件名
    ss=strcat(s,'.txt');
    w=load(strcat(s,'.txt'));
     if ~isempty(w);
    %a1{1}='asd';
%     a1=strrep(a1,'-',' ');
%     a2=strrep(a2,':',' ');


%计算换算后的时间，存到xushu中
    for m=1:length(w)
         fprintf('%d\n',n);
        if(w(m,2)==1||w(m,2)==3||w(m,2)==5||w(m,2)==7||w(m,2)==8||w(m,2)==10||w(m,2)==12)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*1/100+fix(w(m,4))*60000+24*w(m,3)*60000+24*31*w(m,2)*60000;
        end
        
         if(w(m,2)==4||w(m,2)==6||w(m,2)==9||w(m,2)==11)
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*1/100+fix(w(m,4))*60000+24*w(m,3)*60000+24*30*w(m,2)*60000;
         end
         
         if(w(m,2)==2)%润年要小心
        xushu(m,1)=(w(m,4)-fix(w(m,4)))*1/100+fix(w(m,4))*60000+24*w(m,3)*60000+24*28*w(m,2)*60000;
        end
%         xuhao(m)=strcat(str1,'.');
%         xuhao1(m)=stracat(xuhao(m),str2);
    end
%     qu=w-fix(w);
 

    shuichi=[w(:,2:4) xushu];
    w2=sortrows(shuichi,4);
    w1=[w(:,1) w2];
    
    
    %核对结果
%      for m=1:length(w)
%         
%         if(w(m,2)==1||w(m,2)==3||w(m,2)==5||w(m,2)==7||w(m,2)==8||w(m,2)==10||w(m,2)==12)
%         xushu1(m,1)=24*w(m,3)*60000+24*31*w(m,2)*60000;
%         end
%         
%          if(w(m,2)==4||w(m,2)==6||w(m,2)==9||w(m,2)==11)
%         xushu1(m,1)=24*w(m,3)*600+24*30*w(m,2)*60000;
%          end
%          
%          if(w(m,2)==2)%润年要小心
%         xushu1(m,1)=24*w(m,3)*600+24*28*w(m,2)*60000;
%         end
% %         xuhao(m)=strcat(str1,'.');
% %         xuhao1(m)=stracat(xuhao(m),str2);
%      end
%    % xushu2=sort(xushu1,'descend');
% %      kongjian=[xushu1 w(:,4)];
% 
%       xuhao(1)=xushu(1);
%     count=1;
%     for m=2:length(w)
%          if(xushu1(m)~=xushu1(m-1))
%              count=count+1;
%              xuhao(count)=xushu1(m);
%          end
%     end
%  jishuqi=1; 
%  geshu=zeros(length(xuhao),1);
%  xia=xuhao(1);
%  shang=xuhao(length(xuhao));
%     for m=xia:shang
%         
%          for q=1:length(w)
%              if(xushu1(q)==m)
%                  geshu(jishuqi,1)=geshu(jishuqi,1)+1;
%              end
%              jishuqi=jishuqi+1;
%          end
%     end





%     yue(1)=w(1,2);
%     count=1;
%     zaiti=yue(1);
%     for m=1:length(w)
%          if(w(m,2)~=zaiti)
%              count=count+1;
%              yue(count)=w(m,2);
%              zaiti=w(m,2);
%          end
%     end
%     
%     for m=1:length(w)
%         for q=yue(1):yue(length(yue))
%             
%             
%    for m= 
%     while()
    
    
    
    
    
    

  fid=fopen(ss,'r+');
    for m=1:length(w)
    
    fprintf(fid,'%d ',w1(m,1));
    fprintf(fid,'%d ',w1(m,2));
    fprintf(fid,'%d ',w1(m,3));
    fprintf(fid,'%d\r\n',w1(m,4));
       
    end
     fclose(fid);   
     end
     
     if isempty(w)
         flag=flag+1;
         wenjianming(n)=1;
     end
 end
%     
%     
%     fid=fopen(ss,'r+');
%     for m=1:length(w)
%     
%     fprintf(fid,'%d ',w1(m,2));
%      fprintf(fid,'%d ',w1(m,3));
%       fprintf(fid,'%d ',w1(m,4));
%        fprintf(fid,'%d\r\n',w1(m,5));
%        
%     end
%      fclose(fid);   
%  end
%  
 
 
 
%         
%   count=0;  
%      for kg=1:length(a1)
%        aa2(kg,:)=str2num(a2{kg});
%        a21{kg,1}=num2str(aa2(kg,1:2));
%       
%        count=count+1;
%      end
    % aa21=strrep(a21,'    ','.');
%     aa21=strrep(a21,'   ','.');
%     aa21=strrep(aa21,'  ','.');
%       aa21=strrep(a21,' ','.');
%     for kg=1;length(a2)
%         aaa2{kg}=strcat(aa2(kg,1),'.');
% %         aaaa2{kg}=strcat(aaa2{kg},aa2{kg,2});
%     end
%     d=a2;
%     d=strrep(d,'',' ');
    % u=num2str(w);
%     b1=cell2mat(a1);
%     b2=cell2mat(a2);
%     d=blanks(length(b1));
%     d=cell2mat(d)';
    %c1=mat2
    %c=[b1 d b2];
%     for w=1:length(a1)
%         str1=a1{w};
%         str2=aa21{w};
%         c{w,1}=[str1 blanks(1) str2];
%     end
% %     e=str2num(c);
% %     f=str2num(c);
%     for w=1:length(a1)
%         e(w,:)=str2num(c{w});
%     end
%     

end