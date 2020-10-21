function  [Qzhuanfafenbu,Qercizhuanfafenbu,Qfensishufenbu,leijiQzhuanfafenbu,leijiQercizhuanfafenbu,leijiQfensishufenbu]=zh(x)%Qzhuanfafenbu是转发数的分布，Qercizhuanfafenbu是二次转发数的分布,Qfensishufenbu是转发者的粉丝数的分布;前面加“leijiaQ”的是对应的累计分布
year=x(:,1);
month=x(:,2);
day=x(:,3);
q=length(year); 
move=100*x(:,4);
x(:,4)=move;

nianshu=0;
nianzaiti=year(1);
for a=1:q
    if(year(a)~=nianzaiti)
        nianshu=nianshu+1;
        nianzaiti=year(a);
    end
end
nianshu=nianshu+1;%时间跨度是几年

nian=zeros(nianshu,1);%每年分配一个存储器
nian(1)=year(1);
b=2;
nianzaiti=year(1);
for a=2:q
    if(year(a)~=nianzaiti)
        nian(b)=year(a);
        nianzaiti=year(a);
        b=b+1;
    end
end%nian存储年份（2013等）

yueshu=0;
 yuezaiti=month(1);
for a=1:q
    if(month(a)~=yuezaiti)
        yueshu=yueshu+1;
        yuezaiti=month(a);
    end
end
yueshu=yueshu+1;%有多少个月

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
end%yue存储月份


tianshu=0;
 tianzaiti=day(1);
for a=1:q
    if(day(a)~=tianzaiti)
        tianshu=tianshu+1;
        tianzaiti=day(a);
    end
end
tianshu=tianshu+1;%计算天数

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
end%tian存储天数


xx=zeros(50000,20);%xx存储各天的时刻
yy=zeros(50000,20);
zz=zeros(50000,20);
for woqu=1:nianshu
for a=1:tianshu
    
    for d=1:yueshu
        jishuqi=1;
    for c=1:q
        if(x(c,1)==nian(woqu)&&x(c,2)==yue(d)&&x(c,3)==tian(a))
           xx(jishuqi,a)=x(c,4);
           yy(jishuqi,a)=x(c,5);
           zz(jishuqi,a)=x(c,6);
           jishuqi=jishuqi+1;
        end
    end
    end
end
end%将各天的时刻存储在一个矩阵xx的不同列中

 yitianzhuanfashu=zeros(tianshu,1);               
for a=1:tianshu
    for b=1:(length(xx)-1)
        if(xx(b,a)>xx(b+1,a))
        yitianzhuanfashu(a)=b;
        end
    end
end%yitianzhuanfashu存储各天的转发次数

shijianduanshu=24*60;%一天被分为几段
zhuanfafenbu=zeros(shijianduanshu,tianshu);
erci=zeros(shijianduanshu,tianshu);
fensishu=zeros(shijianduanshu,tianshu);
yixiaoshiduanshu=shijianduanshu/24;
for a=1:tianshu
    for m=0:(shijianduanshu-1)
  
           for b=1:yitianzhuanfashu(a)  
            if ((xx(b,a)>=rem(m,yixiaoshiduanshu)+100*fix(m/yixiaoshiduanshu))&&(xx(b,a)<1+rem(m,yixiaoshiduanshu)+100*fix(m/yixiaoshiduanshu)));
             zhuanfafenbu(m+1,a)=zhuanfafenbu(m+1,a)+1;
             erci(m+1,a)=yy(b,a)+erci(m+1,a);
             fensishu(m+1,a)=zz(b,a)+fensishu(m+1,a);
            end
           end
  
    end%统计各天的转发次数分布
end

heji=zeros(tianshu*shijianduanshu,1);
heji1=zeros(tianshu*shijianduanshu,1);
heji2=zeros(tianshu*shijianduanshu,1);
jishuqi=1;
for a=1:tianshu
    for b=1:shijianduanshu
    heji(jishuqi)=zhuanfafenbu(b,a);
    heji1(jishuqi)=erci(b,a);
    heji2(jishuqi)=fensishu(b,a);
    jishuqi=jishuqi+1;
    end
end%将转发次数分布统计到一起

len=0;
for a=1:length(heji)
    if(heji(a)~=0)
       len=a;
        break
    end
end

zhenheji=heji([len:length(heji)],1);
zhenheji1=heji1([len:length(heji)],1);
zhenheji2=heji2([len:length(heji)],1);

wuyiyi=fix(length(zhenheji)/10);
zhenzhenheji=zeros(1,wuyiyi);
zhenzhenheji1=zeros(1,wuyiyi);
zhenzhenheji2=zeros(1,wuyiyi);

for a=1:wuyiyi
    for b=(10*a-9):10*a
        zhenzhenheji(a)=zhenheji(b)+zhenzhenheji(a);
        zhenzhenheji1(a)=zhenheji1(b)+zhenzhenheji1(a);
         zhenzhenheji2(a)=zhenheji2(b)+zhenzhenheji2(a);
    end
end
leijiQzhuanfafenbu=cumsum(zhenzhenheji)';
leijiQercizhuanfafenbu=cumsum(zhenzhenheji1)';
leijiQfensishufenbu=cumsum(zhenzhenheji2)';
Qzhuanfafenbu=zhenzhenheji';
Qercizhuanfafenbu=zhenzhenheji1';
Qfensishufenbu=zhenzhenheji2';
%w=sum(heji)-length(x);
end     