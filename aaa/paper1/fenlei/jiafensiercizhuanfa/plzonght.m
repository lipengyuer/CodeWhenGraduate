function  [Qzhuanfafenbu]=plzonght(x)%Qzhuanfafenbu是转发数的分布，Qercizhuanfafenbu是二次转发数的分布,Qfensishufenbu是转发者的粉丝数的分布;前面加“leijiaQ”的是对应的累计分布;批量处理专用，输入是年月日小时分
tiao=[2.59080000000000	2.40453333333333	2.21826666666667	2.03200000000000	1.84573333333333	1.65946666666667	1.47320000000000	1.38853333333333	1.30386666666667	1.21920000000000	1.13453333333333	1.04986666666667	0.965199999999999	0.905933333333333	0.846666666666667	0.787400000000000	0.728133333333333	0.668866666666667	0.609600000000000	0.575733333333334	0.541866666666667	0.508000000000000	0.474133333333333	0.440266666666667	0.406400000000000	0.406400000000000	0.406400000000000	0.406400000000000	0.406400000000000	0.406400000000000	0.406400000000000	0.457200000000000	0.508000000000000	0.558800000000000	0.609600000000000	0.660400000000000	0.711200000000000	0.855133333333333	0.999066666666666	1.14300000000000	1.28693333333333	1.43086666666667	1.57480000000000	2.02353333333333	2.47226666666667	2.92100000000000	3.36973333333333	3.81846666666667	4.26720000000000	4.56353333333333	4.85986666666667	5.15620000000000	5.45253333333333	5.74886666666667	6.04520000000000	6.18913333333333	6.33306666666667	6.47700000000000	6.62093333333333	6.76486666666667	6.90880000000000	6.90880000000000	6.90880000000000	6.90880000000000	6.90880000000000	6.90880000000000	6.90880000000000	6.84106666666667	6.77333333333333	6.70560000000000	6.63786666666667	6.57013333333333	6.50240000000000	6.54473333333333	6.58706666666667	6.62940000000000	6.67173333333333	6.71406666666667	6.75640000000000	6.72253333333333	6.68866666666667	6.65480000000000	6.62093333333333	6.58706666666667	6.55320000000000	6.60400000000000	6.65480000000000	6.70560000000000	6.75640000000000	6.80720000000000	6.85800000000000	6.84953333333333	6.84106666666667	6.83260000000000	6.82413333333333	6.81566666666667	6.80720000000000	6.62940000000000	6.45160000000000	6.27380000000000	6.09600000000000	5.91820000000000	5.74040000000000	5.54566666666667	5.35093333333333	5.15620000000000	4.96146666666667	4.76673333333333	4.57200000000000	4.55506666666667	4.53813333333333	4.52120000000000	4.50426666666667	4.48733333333333	4.47040000000000	4.52120000000000	4.57200000000000	4.62280000000000	4.67360000000000	4.72440000000000	4.77520000000000	4.76673333333333	4.75826666666667	4.74980000000000	4.74133333333333	4.73286666666667	4.72440000000000	4.68206666666667	4.63973333333333	4.59740000000000	4.55506666666667	4.51273333333333	4.47040000000000	4.29260000000000	4.11480000000000	3.93700000000000	3.75920000000000	3.58140000000000	3.40360000000000	3.26813333333333	3.13266666666667	2.99720000000000	2.86173333333333	2.72626666666667];
shi=[[0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,5,5,5,5,5,5,6,6,6,6,6,6,7,7,7,7,7,7,8,8,8,8,8,8,9,9,9,9,9,9,10,10,10,10,10,10,11,11,11,11,11,11,12,12,12,12,12,12,13,13,13,13,13,13,14,14,14,14,14,14,15,15,15,15,15,15,16,16,16,16,16,16,17,17,17,17,17,17,18,18,18,18,18,18,19,19,19,19,19,19,20,20,20,20,20,20,21,21,21,21,21,21,22,22,22,22,22,22,23,23,23,23,23,23;]];
year=x(:,1);
month=x(:,2);
day=x(:,3);
q=length(year); 
move=10000*x(:,4);
x(:,4)=move;
jilutianshu=5;%记录多少天的数据
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
[xx yyy zzz]=cunchushijian1(tianshu,yueshu,x,tian,yue,q);

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
fensifenbu=zeros(shijianduanshu,tianshu);
ercizhuanfenbu=zeros(shijianduanshu,tianshu);

yixiaoshiduanshu=shijianduanshu/24;
for a=1:tianshu
    for m=0:(shijianduanshu-1)
  
           for b=1:yitianzhuanfashu(a)  
            if ((xx(b,a)>=6000*(m/yixiaoshiduanshu-fix(m/yixiaoshiduanshu))+10000*fix(m/yixiaoshiduanshu))&&(xx(b,a)<1000+6000*(m/yixiaoshiduanshu-fix(m/yixiaoshiduanshu))+10000*fix(m/yixiaoshiduanshu)));%rem(m,yixiaoshiduanshu)
             zhuanfafenbu(m+1,a)=zhuanfafenbu(m+1,a)+1;
             fensifenbu(m+1,a)=fensifenbu(m+1,a)+yyy(b,a);
             ercizhuanfenbu(m+1,a)=ercizhuanfenbu(m+1,a)+zzz(b,a);
            end
           end
  
    end%统计各天的转发次数分布
end

heji=zeros(tianshu*shijianduanshu,1);
heji2=zeros(tianshu*shijianduanshu,1);
heji3=zeros(tianshu*shijianduanshu,1);

jishuqi=1;
for a=1:tianshu
    for b=1:shijianduanshu
    heji(jishuqi)=zhuanfafenbu(b,a);
     heji2(jishuqi)=fensifenbu(b,a);
     heji3(jishuqi)=ercizhuanfenbu(b,a);
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
zhenheji2=heji2(len:length(heji),1);
zhenheji3=heji3(len:length(heji),1);


wuyiyi=fix(length(zhenheji)/10);
zhenzhenheji=zeros(1,wuyiyi);
zhenzhenheji2=zeros(1,wuyiyi);
zhenzhenheji3=zeros(1,wuyiyi);

for a=1:wuyiyi
    for b=(10*a-9):10*a
        zhenzhenheji(a)=zhenheji(b)+zhenzhenheji(a);
          zhenzhenheji2(a)=zhenheji2(b)+zhenzhenheji2(a);
            zhenzhenheji3(a)=zhenheji3(b)+zhenzhenheji3(a);
        
    end
end
kezi=zeros(1,144*jilutianshu);
% kezi2=zeros(1,144*jilutianshu);
% kezi3=zeros(1,144*jilutianshu);

if(wuyiyi<144*jilutianshu)
  for a=1:wuyiyi
    kezi(a)=zhenzhenheji(a)+kezi(a);
%      kezi2(a)=zhenzhenheji2(a)+kezi2(a);
%       kezi3(a)=zhenzhenheji3(a)+kezi3(a);
  end
  Qzhuanfafenbu=kezi';
%    fensifenbu=kezi2';
%    ercizhuanfenbu=kezi3';
 
  
else 
  Qzhuanfafenbu=zhenzhenheji(1:144*jilutianshu)';
%   fensifenbu=zhenzhenheji2(1:144*jilutianshu)';
%   ercizhuanfenbu=zhenzhenheji3(1:144*jilutianshu)';
end
%  tiao1=zeros(1,144*(jilutianshu+2));
%  shi1=zeros(1,144*(jilutianshu+2));
%  for m=1:(jilutianshu+2)
%        tiao1(1,((m-1)*144+1):m*144)=tiao;
%        shi1(1,((m-1)*144+1):m*144)=shi;
%  end
%    tiao3=tiao1(1,(fix(len/10):(fix(len/10)+144*jilutianshu-1)));
%    tiaoz=tiao3/max(tiao3)';
%    shi3=shi1(1,(fix(len/10):(fix(len/10)+144*jilutianshu-1)));
%    shiz=shi3';
    
end     