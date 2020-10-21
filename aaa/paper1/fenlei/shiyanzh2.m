function  [zhuanfafenbu xx tianshu]=shiyanzh2(x)%Qzhuanfafenbu是转发数的分布，Qercizhuanfafenbu是二次转发数的分布,Qfensishufenbu是转发者的粉丝数的分布;前面加“leijiaQ”的是对应的累计分布;批量处理专用，输入是年月日小时分

year=x(:,1);
month=x(:,2);
day=x(:,3);
q=length(year); 
% move=100*x(:,4);
% x(:,4)=move;

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


xx=zeros(10000,31);%xx存储各天的时刻

for woqu=1:nianshu
for a=1:tianshu
    
    for d=1:yueshu
        jishuqi=1;
    for c=1:q
        if(x(c,2)==yue(d)&&x(c,3)==tian(a))
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
               quan=fix(xx(b,a))*600+(xx(b,a)-fix(xx(b,a)))*100;
               shang=10+rem(m,yixiaoshiduanshu)*(60)+600*fix(m/yixiaoshiduanshu);
               xia=rem(m,yixiaoshiduanshu)*100+600*fix(m/yixiaoshiduanshu);
            if (quan>=xia&&quan<shang);
             zhuanfafenbu(m+1,a)=zhuanfafenbu(m+1,a)+1;
            end
           end
  
    end%统计各天的转发次数分布
end

% heji=zeros(tianshu*shijianduanshu,1);
% 
% jishuqi=1;
% for a=1:tianshu
%     for b=1:shijianduanshu
%     heji(jishuqi)=zhuanfafenbu(b,a);
%     jishuqi=jishuqi+1;
%     end
% end
% 
% len=0;
% for a=1:length(heji)
%     if(heji(a)~=0)
%        len=a;
%         break
%     end
% end
% 
% zhenheji=heji(len:length(heji),1);
% 
% 
% % wuyiyi=fix(length(zhenheji)/10);
% % zhenzhenheji=zeros(1,wuyiyi);
% % 
% % for a=1:wuyiyi
% %     for b=(10*a-9):10*a
% %         zhenzhenheji(a)=zhenheji(b)+zhenzhenheji(a);
% %         
% %     end
% % end
% % 
% % kezi=zeros(1,720);
% % 
% % if(wuyiyi<720)
% %   for a=1:wuyiyi
% %     kezi(a)=zhenzhenheji(a)+kezi(a);
% %   end
% %   Qzhuanfafenbu=kezi';
% % end
% % if(wuyiyi>=720)
% %   Qzhuanfafenbu=zhenzhenheji(1:720)';
% % end
% wuyiyi=length(zhenheji);
% if(wuyiyi<720)
%   for a=1:wuyiyi
%     kezi(a)=zhenheji(a)+kezi(a);
%   end
%   Qzhuanfafenbu=kezi';
% end
% if(wuyiyi>=720)
%   Qzhuanfafenbu=zhenheji(1:720)';
% end
% 
%     
end     