%统计每个用户最近发布200条微博所使用的客户端种类数
fid = fopen('C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\data2014\sourceAfterUnique.txt');
num_uid = 1976;
huaban=zeros(num_uid,24*6*30*6);
jishuqi=0;
uid1=[];
uid1_=[];
fuliebianhuanzhi1=[];
yitian=zeros(num_uid,24*6);
for n = 1:num_uid
    a=fgetl(fid);
    b=regexp(a,' ','split');
    uid1{n,1}=b{1};
    uid1_(n,1)=str2double(uid1{n,1});
    Num_kehuduan(n,1) = length(tabulate(b))-1; 
%     num_post=(length(b)-1)/2;
%     c1=[];
%     c2=[];
%     y=0;
%     for m=1:num_post
%           c1{m,1}=b{2*m};
%           c2{m,1}=b{2*m+1};
%     end
%     [year_month_day_hour_min1]=zifutihuan_zhanghushibie(c1,c2);
%      year_month_day_hour_min2=flipud(year_month_day_hour_min1);
%    
%     [d_quan d_qutou d]=tongjifaweifenbu_zhanghushibie(year_month_day_hour_min2);
%     huaban(n,:)=[d_quan' zeros(1,24*6*30*6-length(d_quan))];
% %     d_fuliye=qiatouquwei(d_quan);
%     for jishu=1:30*6
%         yitian(n,:)=yitian(n,:)+huaban(n,(jishu-1)*24*6+1:jishu*24*6);
%     end
%      y=fft(yitian(n,:));
%      fuliebianhuanzhi1(n,:)=real(y);
%      jishuqi=jishuqi+1;
     fprintf('%d\n',jishuqi);
%      if n==3
%          break;
%      end
end
 fclose(fid);
 
% data2={fuliebianhuanzhi1};
%     data1=[uid1_  fuliebianhuanzhi1];
%    csvwrite('C:\Users\admini\Desktop\user_time.csv',data1);
%    fid1=fopen('C:\Users\admini\Desktop\user_kehuduan.txt','w+');
%    
%    for n = 1:num_uid
%        fprintf(fid,'%s ',uid1{n});
%        for m=1:144
%           fprintf(fid1,'%d ',fuliebianhuanzhi1(n,m));
%        end
%        fprintf(fid,'\r\n');
%    end
%    fclose(fid1);

 