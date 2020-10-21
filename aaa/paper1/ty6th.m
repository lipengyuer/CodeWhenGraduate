function [jianyanzhi,hejizhuanfafenbu]=ty6th(x)
year=x(:,1);
month=x(:,2);
day=x(:,3);
q=length(year); 


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


xx=zeros(50000,100);%xx存储各天的时刻
for woqu=1:nianshu
for a=1:tianshu
    
    for d=1:yueshu
        jishuqi=1;
    for c=1:q
        if(x(c,1)==nian(woqu)&&x(c,2)==yue(d)&&x(c,3)==tian(a))
           xx(jishuqi,a)=x(c,4);
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

shijianduanshu=24*6;%一天被分为几段
zhuanfafenbu=zeros(shijianduanshu,tianshu);
yixiaoshiduanshu=shijianduanshu/24;
for a=1:tianshu
    for m=0:(shijianduanshu-1)
  
           for b=1:yitianzhuanfashu(a)
            if ((xx(b,a)>=rem(m,yixiaoshiduanshu)*0.1+fix(m/yixiaoshiduanshu))&&(xx(b,a)<0.1+rem(m,yixiaoshiduanshu)*0.1+fix(m/yixiaoshiduanshu)));
             zhuanfafenbu(m+1,a)=zhuanfafenbu(m+1,a)+1;
            end
           end
  
    end%统计各天的转发次数分布
end

heji=zeros(tianshu*shijianduanshu,1);
jishuqi=1;
for a=1:tianshu
    for b=1:shijianduanshu
    heji(jishuqi)=zhuanfafenbu(b,a);
    jishuqi=jishuqi+1;
    end
end%将转发次数分布统计到一起
%w=heji;
w=sum(heji)-length(x);
jianyanzhi=w;
hejizhuanfafenbu=heji;
end     