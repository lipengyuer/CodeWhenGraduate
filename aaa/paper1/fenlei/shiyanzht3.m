function  [Qzhuanfafenbu yueshu tianshu]=shiyanzht3(e)%Qzhuanfafenbu��ת�����ķֲ���Qercizhuanfafenbu�Ƕ���ת�����ķֲ�,Qfensishufenbu��ת���ߵķ�˿���ķֲ�;ǰ��ӡ�leijiaQ�����Ƕ�Ӧ���ۼƷֲ�;��������ר�ã�������������Сʱ��

year=e(:,1);
month=e(:,2);
day=e(:,3);
q=length(year); 
move=100*e(:,4);
e(:,4)=move;

nianshu=0;
nianzaiti=year(1);
for a=1:q
    if(year(a)~=nianzaiti)
        nianshu=nianshu+1;
        nianzaiti=year(a);
    end
end
nianshu=nianshu+1;%ʱ�����Ǽ���

nian=zeros(nianshu,1);%ÿ�����һ���洢��
nian(1)=year(1);
b=2;
nianzaiti=year(1);
for a=2:q
    if(year(a)~=nianzaiti)
        nian(b)=year(a);
        nianzaiti=year(a);
        b=b+1;
    end
end%nian�洢��ݣ�2013�ȣ�

yueshu=0;
 yuezaiti=month(1);
for a=1:q
    if(month(a)~=yuezaiti)
        yueshu=yueshu+1;
        yuezaiti=month(a);
    end
end
yueshu=yueshu+1;%�ж��ٸ���

yue=zeros(yueshu,1);
yue(1)=month(1);
b=2;
 yuezaiti=month(1);
for a=2:q
    if(month(a)~=yuezaiti)
        yue(b)=month(a);
        yuezaiti=month(a);
        b=b+1;
    end
end%yue�洢�·�


tianshu=0;
 tianzaiti=day(1);
for a=1:q
    if(day(a)~=tianzaiti)
        tianshu=tianshu+1;
        tianzaiti=day(a);
    end
end
tianshu=tianshu+1;%��������

tian=zeros(tianshu,1);
tian(1)=day(1);
b=2;
 tianzaiti=day(1);
for a=2:q
    if(day(a)~=tianzaiti)
        tian(b)=day(a);
        tianzaiti=day(a);
        b=b+1;
    end
end%tian�洢����


  for m=1:length(e)
       if(e(m,2)==1||e(m,2)==3||e(m,2)==5||e(m,2)==7||e(m,2)==8||e(m,2)==10||e(m,2)==12)
           xushu(m)=e(m,5)+60*e(m,4)+60*24*e(m,3)+60*24*31*e(m,2);
       elseif(e(m,2)==2)
           xushu(m)=e(m,5)+60*e(m,4)+60*24*e(m,3)+60*24*28*e(m,2);
       else
            xushu(m)=e(m,5)+60*e(m,4)+60*24*e(m,3)+60*24*30*e(m,2);
       end
  end
  
  for o=yue(1):yue(q)
      for 

 yitianzhuanfashu=zeros(tianshu,1);               
for a=1:tianshu
    for b=1:(length(xx)-1)
        if(xx(b,a)>xx(b+1,a))
        yitianzhuanfashu(a)=b;
        end
    end
end%yitianzhuanfashu�洢�����ת������



shijianduanshu=24*60;%һ�챻��Ϊ����
zhuanfafenbu=zeros(shijianduanshu,tianshu);

yixiaoshiduanshu=shijianduanshu/24;
for a=1:tianshu
    for m=0:(shijianduanshu-1)
  
           for b=1:yitianzhuanfashu(a)  
            if ((xx(b,a)>=rem(m,yixiaoshiduanshu)*0.6+100*fix(m/yixiaoshiduanshu))&&(xx(b,a)<1+rem(m,yixiaoshiduanshu)*0.6+100*fix(m/yixiaoshiduanshu)));
             zhuanfafenbu(m+1,a)=zhuanfafenbu(m+1,a)+1;
            end
           end
  
    end%ͳ�Ƹ����ת�������ֲ�
end

heji=zeros(tianshu*shijianduanshu,1);

jishuqi=1;
for a=1:tianshu
    for b=1:shijianduanshu
    heji(jishuqi)=zhuanfafenbu(b,a);
    jishuqi=jishuqi+1;
    end
end

len=0;
for a=1:length(heji)
    if(heji(a)~=0)
       len=a;
        break
    end
end

zhenheji=heji(len:length(heji),1);


wuyiyi=fix(length(zhenheji)/10);
flag=length(zhenheji);
zhenzhenheji=zeros(1,wuyiyi);

for a=1:wuyiyi
    for b=(10*a-9):10*a
        zhenzhenheji(a)=zhenheji(b)+zhenzhenheji(a);
        
    end
end

kezi=zeros(1,720);

if(wuyiyi<720)
  for a=1:wuyiyi
    kezi(a)=zhenzhenheji(a)+kezi(a);
  end
  Qzhuanfafenbu=kezi';
else 
  Qzhuanfafenbu=zhenzhenheji(1:720)';
end

    
end     