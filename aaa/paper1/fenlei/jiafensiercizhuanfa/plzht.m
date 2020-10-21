function [hezi z]=plzht%批量处理，输出是z（各条微博的传播曲线），hezi（零点对齐并求和的结果）
jilutianshu=5;
wenjiangeshu=200;
z=zeros(144*jilutianshu,wenjiangeshu);
z2=zeros(144*jilutianshu,wenjiangeshu);
z3=zeros(144*jilutianshu,wenjiangeshu);
z4=zeros(144*jilutianshu,wenjiangeshu);
%z5=zeros(144*jilutianshu,wenjiangehsu);
hezi=zeros(144*jilutianshu,1);
hezi2=zeros(144*jilutianshu,1);
hezi3=zeros(144*jilutianshu,1);

for n=1:wenjiangeshu%txt文件名的范围
 
    s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',int2str(n));%连接字符串（文件夹名和txt文件名）
    ss=strcat(s,'.txt');
    if(exist(ss,'file')==2)
    w=load(ss);
    if(length(w)>40000)
              w=[];
              
    end
     
    if ~isempty(w)
      [jieguo ]=plzonght(w);
      hezi=hezi+jieguo;
%        hezi2=hezi2+ fensi;
%        hezi3=hezi3+ercizhuan;
      z(:,n)=jieguo;
%        z2(:,n)=fensi;
%        z3(:,n)=ercizhuan;
%         z4(:,n)=tiaoz';
     %  z5(:,n)=shiz;
    else
        z(:,n)=zeros(144*jilutianshu,1);
    end
    end
    fprintf('%d',n);
end
    
end