function  [Qzhuanfafenbu x xx xxx tianshu tianshu1 jishu qishi count]=piliangzht(x)%Qzhuanfafenbu��ת�����ķֲ���Qercizhuanfafenbu�Ƕ���ת�����ķֲ�,Qfensishufenbu��ת���ߵķ�˿���ķֲ�;ǰ��ӡ�leijiaQ�����Ƕ�Ӧ���ۼƷֲ�;��������ר�ã�������������Сʱ��
 
year=x(:,1);
month=x(:,2);
day=x(:,3);
q=length(year); 
move=10000*x(:,4);
x(:,4)=move;
jilutianshu=5;%��¼�����������
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


%xx=zeros(50000,50);%xx�洢�����ʱ��
[xx xxx tianshu1 jishu qishi count]=cunchushijian(tianshu,yueshu,x,tian,yue,q);
% for woqu=1:nianshu
%   for a=1:tianshu
%     
%     for d=1:yueshu
%         jishuqi=1;
%       for c=1:q
%         if(x(c,1)==nian(woqu)&&x(c,2)==yue(d)&&x(c,3)==tian(a))
%            xx(jishuqi,a)=x(c,4);
%            jishuqi=jishuqi+1;
%         end
%       end
%     end
%   end
% end%�������ʱ�̴洢��һ������xx�Ĳ�ͬ����

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
            if ((xx(b,a)>=6000*(m/yixiaoshiduanshu-fix(m/yixiaoshiduanshu))+10000*fix(m/yixiaoshiduanshu))&&(xx(b,a)<100+6000*(m/yixiaoshiduanshu-fix(m/yixiaoshiduanshu))+10000*fix(m/yixiaoshiduanshu)));%rem(m,yixiaoshiduanshu)
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
zhenzhenheji=zeros(1,wuyiyi);

for a=1:wuyiyi
    for b=(10*a-9):10*a
        zhenzhenheji(a)=zhenheji(b)+zhenzhenheji(a);
        
    end
end

kezi=zeros(1,144*jilutianshu);

if(wuyiyi<144*jilutianshu)
  for a=1:wuyiyi
    kezi(a)=zhenzhenheji(a)+kezi(a);
  end
  Qzhuanfafenbu=kezi';
else 
  Qzhuanfafenbu=zhenzhenheji(1:144*jilutianshu)';
end

    
end     