
load C:\Users\admini\Desktop\aaaaa\depression\微博时间分布及天数等数据zhenshitianshu.mat

x=fawei_num;
weizhi=find(sum(x)>=0);
a=x(1:108,:);
b=x(109:end,:);
aa=sum(a,2)+0.000001;
bb=sum(b,2)+0.000001;

cipin_1=a./repmat(aa,1,length(weizhi));
cipin_2=b./repmat(bb,1,length(weizhi));
clear a b aa bb;
cipin_1_=sum(cipin_1)/108;
cipin_2_=sum(cipin_2)/273;
data2=[cipin_1;cipin_2];
faweifenbu_nornal=cipin_2_;%正常用户的发微博分布
faweifenbu_dep=cipin_1_;
%%%%%%%%%%381分析完毕%%%%%%%%%%%

x=faweifenbu_hit;
aa=sum(x,2)+0.000001;
cipin_1=x./repmat(aa,1,size(x,2));
clear a b aa bb;
data2=[cipin_1];
faweifenbu_hitxuesheng=sum(data2)/length(x);
plot([1:24],faweifenbu_hitxuesheng,'b');hold on,plot([0:23],faweifenbu_nornal,'g');%hold on,plot([0:23],faweifenbu_dep,'r');

%%%%%每个月新加入的用户%%%%%
DaoxiaoOfTime_hit=365*31*24*100*firstday_hit(:,1)+24*31*100*firstday_hit(:,2)+24*100*firstday_hit(:,3)+firstday_hit(:,4);%x的第四列已经乘以100了。
paixuhou_hit=sortrows([DaoxiaoOfTime firstday_hit],1);
num_newblogers_hit=zeros(4*12,1);
counter=1;
for m=2010:2013
    for n=1:12
        for jishuqi=1:length(firstday_hit)
            if(firstday_hit(jishuqi,1)==m&&firstday_hit(jishuqi,2)==n)
                num_newblogers_hit(counter)= num_newblogers_hit(counter)+1;
              
            end
        end
           counter=counter+1;
    end

end
             
