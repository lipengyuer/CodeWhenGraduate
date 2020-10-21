% x=textread('C:\Users\admini\Desktop\aaaaa\depression\uidbuyiyu.txt','%s','headerlines',0);
x=textread('C:\Users\admini\Desktop\aaaaa\depression\uid_all.txt','%s','headerlines',0);
yitian=zeros(length(x),24*6);
huaban=zeros(length(x),24*6*30*48);

for m=1:length(x)%length(x)
%       s=strcat('C:\Users\admini\Desktop\aaaaa\depression\a2\depressionFalseInfo1\',x{m},'.txt'); 
       s=strcat('C:\Users\admini\Desktop\aaaaa\depression\a2\all\',x{m},'.txt'); 
      if(exist(s,'file')==0)
         yitian(m,:)=zeros(1,144);
         zongshu(m)=0;
         zongbeizhuanfa(m,1)=0;
         zongpinglun(m,1)=0;
         zongzhuanfa(m,1)=0;
         kehuduan(m,1)=0;
      else
         [a b c d e f g]=textread(s,'%s%s%s%s%d%d%d','headerlines',0);
         if(length(a)<100)
           yitian(m,:)=zeros(1,144);
           zongshu(m)=0;
           zongbeizhuanfa(m,1)=0;
           zongpinglun(m,1)=0;
           zongzhuanfa(m,1)=0;
           kehuduan(m,1)=0;
         else
           [shijian]=zifutihuan2(b,c);
           shijian1=paixu_yiyu(shijian);
           [d_quan tianshu(m)]=tongjifaweifenbu_yiyu(shijian1);
           qishijieshu1(m,:) = [shijian(1,:)];
           qishijieshu2(m,:) = [shijian(end,:)]; 
           weiboshu(m) = size(shijian,1);
           huaban(m,:)=[d_quan' zeros(1,24*6*30*48-length(d_quan))];
           for jishu=1:30*48
             yitian(m,:)=yitian(m,:)+huaban(m,(jishu-1)*24*6+1:jishu*24*6);
             fprintf('jishu=%d\n',jishu);
           end
         zongshu(m,1)=length(a);
         zongbeizhuanfa(m,1)=sum(e);
         zongpinglun(m,1)=sum(f);
         zongzhuanfa(m,1)=sum(g);
         fprintf('m=%d\n',m);
         table=tabulate(d');
         kehuduan(m,1)=length(table);
        end
      end
end

%data=[yitian zongbeizhuanfa/zongshu zongpinglun/zongshu zongzhuanfa/zongshu];