% fid = fopen('C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\user_time.txt');
fid = fopen('C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\data2014\timeAfterUnique.txt');
num_uid = 1976;
huaban=zeros(num_uid,24*6*30*6);
jishuqi=0;
uid1=[];
uid1_=[];
fuliebianhuanzhi1=[];
yitian=zeros(num_uid,24*6);
for n = 1:num_uid
%     d_fuliye=0;
    a=fgetl(fid);
    b=regexp(a,' ','split');
    uid1{n,1}=b{1};
    uid1_(n,1)=str2double(uid1{n,1});
    
    num_post=(length(b)-1)/2;
    c1=[];
    c2=[];
    y=0;
    for m=1:num_post
          c1{m,1}=b{2*m};
          c2{m,1}=b{2*m+1};
    end
    [year_month_day_hour_min1]=zifutihuan_zhanghushibie(c1,c2);
     year_month_day_hour_min2=flipud(year_month_day_hour_min1);
   
    [d_quan d_qutou d]=tongjifaweifenbu_zhanghushibie(year_month_day_hour_min2);
    huaban(n,:)=[d_quan' zeros(1,24*6*30*6-length(d_quan))];
%     d_fuliye=qiatouquwei(d_quan);
    for jishu=1:30*6
        yitian(n,:)=yitian(n,:)+huaban(n,(jishu-1)*24*6+1:jishu*24*6);
    end
     y=fft(yitian(n,:));
     fuliebianhuanzhi1(n,:)=real(y);
     jishuqi=jishuqi+1;
     fprintf('%d\n',jishuqi);
%      if n==3
%          break;
%      end
end
 fclose(fid);
 
% data2={fuliebianhuanzhi1};
%     data1=[uid1_  fuliebianhuanzhi1];
%    csvwrite('C:\Users\admini\Desktop\user_time.csv',data1);
   fid1=fopen('C:\Users\admini\Desktop\user_time1.txt','w+');
   
   for n = 1:num_uid
       fprintf(fid,'%s ',uid1{n});
       for m=1:144
          fprintf(fid1,'%d ',strcat(uid1{n,1},' ',fuliebianhuanzhi1(n,m)));
       end
       fprintf(fid,'\r\n');
   end
   fclose(fid1);
%  clear num_post a b c1 c2 year_month_day_hour_min d_quan d_qutou d;
%  figure;
%  for m=1:num_uid
%      hold on,plot(huaban(m,:),'*');
%  end
% num_uid = 984;
% uid2=[];
% uid2_=[];
% huaban1=zeros(num_uid,24*6*30*6);
% yitian1=zeros(num_uid,24*6);
% for n = 1:num_uid
%      y=0;
%     a1=fgetl(fid1);
%     b1=regexp(a1,' ','split');
%     uid2{n,1}=b1{1};
%      uid2_(n,1)=str2num(uid2{n,1});
%     num_post1=(length(b1)-1)/2;
%     
%     for m=1:num_post1
%           c11{m,1}=b1{2*m};
%           c21{m,1}=b1{2*m+1};
%     end
%      [year_month_day_hour_min21]=zifutihuan_zhanghushibie(c11,c21);
%      year_month_day_hour_min22=flipud(year_month_day_hour_min21);
%    
%     [d_quan1 d_qutou1 d1]=tongjifaweifenbu_zhanghushibie(year_month_day_hour_min22);
%     
%     huaban1(n,:)=[d_quan1' zeros(1,24*6*30*6-length(d_quan1))];
%     %分布按天分割，再对齐，求和
%     for jishu=1:30*6
%         yitian1(n,:)=yitian1(n,:)+huaban1(n,(jishu-1)*24*6+1:jishu*24*6);
%     end
% %      y=fft(yitian1(n,:));
% %     fuliebianhuanzhi2(n,:)=real(y);
%     jishuqi=jishuqi+1;
%      fprintf('%d\n',jishuqi);
% end
%  fclose(fid1);  
% %  data2={uid2 fuliebianhuanzhi2};
% %   clear num_post1 a1 b1 c11 c21 year_month_day_hour_min1 d_quan1 d_qutou d1;
% %   figure;
% %  for m=1:num_uid
% %      hold on,plot(huaban1(m,:),'*');
% %  end
% 
% alldata=[uid1_ yitian ones(size(yitian,1),1) zeros(size(yitian,1),1);uid2_ yitian1 zeros(size(yitian1,1),1) ones(size(yitian1,1),1)];
%  save('C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\suoyoushuju.mat','alldata','-mat');
 