function [hezi z]=plzht%�������������z������΢���Ĵ������ߣ���hezi�������벢��͵Ľ����
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

for n=1:wenjiangeshu%txt�ļ����ķ�Χ
 
    s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',int2str(n));%�����ַ������ļ�������txt�ļ�����
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