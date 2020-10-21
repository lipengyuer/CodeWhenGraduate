function [hezi z]=piliangzonghet%批量处理，输出是z（各条微博的传播曲线），hezi（零点对齐并求和的结果）
jilutianshu=5;
z=zeros(144*jilutianshu,1);
hezi=zeros(144*jilutianshu,1);
tiaozz=zeros(144*jilutianshu,1);
% hezi1=zeros(720,1);
% hezi8=zeros(720,1);
% hezi9=zeros(720,1);
% hezi10=zeros(720,1);
for n=1:200%txt文件名的范围
 
    s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',int2str(n));%连接字符串（文件夹名和txt文件名）
%     r=load(strcat(s,'.txt'));
%      w=strcat('y',int2str(n));
%      w=load(strcat(s,'.txt'));
   % y(n)=eval(s);
     
     %hezi=hezi+piliangzht(load(strcat(s,'.txt')));
     w=load(strcat(s,'.txt'));
%     for m=1:length(w)
%         
%         if(w(m,2)==1||w(m,2)==3||w(m,2)==5||w(m,2)==7||w(m,2)==8||w(m,2)==10||w(m,2)==12)
%         xushu(m,1)=(w(m,4)-fix(w(m,4)))*(1000/6)+fix(w(m,4))*100+24*w(m,3)*100+24*31*w(m,2)*100;
%         end
%         
%          if(w(m,2)==4||w(m,2)==6||w(m,2)==9||w(m,2)==11)
%         xushu(m,1)=(w(m,4)-fix(w(m,4)))*(1000/6)+fix(w(m,4))*100+24*w(m,3)*100+24*30*w(m,2)*100;
%          end
%          
%          if(w(m,2)==2)%润年要小心
%         xushu(m,1)=(w(m,4)-fix(w(m,4)))*(1000/6)+fix(w(m,4))*100+24*w(m,3)*100+24*28*w(m,2)*100;
%         end
% %         xuhao(m)=strcat(str1,'.');
% %         xuhao1(m)=stracat(xuhao(m),str2);
%     end
%       shuichi=[xushu w];
%     shuichi1=sortrows(shuichi,1);
%     w1=shuichi1;
%     w2=w1(:,2:5);
%     jieguo=piliangzht(w2); 
fprintf('%d\n',n);
if ~isempty(w)

    [jieguo]=piliangzht(w);%piliangzht(w);没有粉丝等列
%      [jieguo]=plzonght_daifensi(w);
     hezi=hezi+jieguo;
     %zz(:,n)=heji;
     z(:,n)=jieguo;
    
  
else z(:,n)=zeros(144*jilutianshu,1);
end
 end
     
     %if empty(w)
         
     %z(1:length(chuan),n)=chuan;
      %r=r(1:20,1);
    

% n=7;
%  s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\',int2str(n));
%     %r=load(strcat(s,'.txt'));
% %      w=strcat('y',int2str(n));
% %      w=load(strcat(s,'.txt'));
%    % y(n)=eval(s);
%      
%      hezi1=hezi1+piliangzht(load(strcat(s,'.txt')));
%     
%      n=8;
%  s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\',int2str(n));
%     %r=load(strcat(s,'.txt'));
% %      w=strcat('y',int2str(n));
% %      w=load(strcat(s,'.txt'));
%    % y(n)=eval(s);
%      
%      hezi8=hezi8+piliangzht(load(strcat(s,'.txt')));
%     
%      n=9;
%  s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\',int2str(n));
%     %r=load(strcat(s,'.txt'));
% %      w=strcat('y',int2str(n));
% %      w=load(strcat(s,'.txt'));
%    % y(n)=eval(s);
%      
%      hezi9=hezi9+piliangzht(load(strcat(s,'.txt')));
%     
%      n=10;
%  s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\',int2str(n));
%     %r=load(strcat(s,'.txt'));
% %      w=strcat('y',int2str(n));
% %      w=load(strcat(s,'.txt'));
%    % y(n)=eval(s);
%      
%      hezi10=hezi10+piliangzht(load(strcat(s,'.txt')));
%      heji=hezi+hezi1+hezi8+hezi9+hezi10
end