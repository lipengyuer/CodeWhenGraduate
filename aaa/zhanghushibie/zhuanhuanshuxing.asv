function [data ling1]=zhuanhuanshuxing(s1,s2)
[a b c d e f g h i j k l m n]=textread(s1,'%d%n%s%s%d%d%d%d%d%d%d%d%s%d','headerlines',0);
% [a b c d e f g h i j k l m n]=textread(s2,'%d%d%s%s%d%d%d%d%d%d%d%d%s%d','headerlines',0);
[uid totalretweet notrealtext realtext rptcnt cmtcnt tag]=textread(s2,'%d%d%d%d%d%d%s','headerlines',1);
 load C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\suoyoushuju.mat;
uid_shixu=alldata(:,1);
shixu=alldata(:,2:145);
b=abs(b);
% b2=abs(b2);
uid=abs(uid);
ling= zeros(length(a),5);
% ling2= zeros(length(a2),5);
% hezi=[];
% hezi2=[];
% kezi={a b c d e f g h i j k l m n};
% kezi2=[totalretweet notrealtext realtext rptcnt cmtcnt];

%给每个用户添加转发总数等信息（uid-uid）
for jishu=1:length(a)%
    for jishu1=1:length(uid)
        if(uid(jishu1)==b(jishu))
           ling(jishu,:)=ling(jishu,:)+[totalretweet(jishu1) notrealtext(jishu1) realtext(jishu1) rptcnt(jishu1) cmtcnt(jishu1)];
%          hezi{jishu,:}={a(jishu) b(jishu) c{jishu} d{jishu} e(jishu) f(jishu) g(jishu) h(jishu) i(jishu) j(jishu) j(jishu) k(jishu) l(jishu) m{jishu} n(jishu) ling(jishu,:)};

        end
    end
end
ling1=[];
for jishu=1:length(a)%
    for jishu1=1:length(uid_shixu)
        if(uid_shixu(jishu1)==b(jishu))
           ling1(jishu,:)=[shixu(jishu1,:)];
%          hezi{jishu,:}={a(jishu) b(jishu) c{jishu} d{jishu} e(jishu) f(jishu) g(jishu) h(jishu) i(jishu) j(jishu) j(jishu) k(jishu) l(jishu) m{jishu} n(jishu) ling(jishu,:)};

        end
    end
end
 totalretweet=ling(:,1);
 notrealtext =ling(:,2);
 realtext =ling(:,3);
 rptcnt=ling(:,4);
 cmtcnt=ling(:,5);
% for jishu=1:length(a)%垃圾用户
%     for jishu1=1:length(uid)
%         if(uid(jishu1)==b(jishu))
%            ling(jishu,:)=ling2(jishu,:)+[totalretweet(jishu1) notrealtext(jishu1) realtext(jishu1) rptcnt(jishu1) cmtcnt(jishu1)];
% %            hezi2{jishu,:}={kezi2{jishu,:} ling2(jishu,:)};
%         end
%     end
% end


%转换属性值
len=length(a);
hanshuzi=0;

% bb=b/max(b);
jid=eye(2);
jin=eye(12);
cc1=zeros(len,1);
cc2=cc1;
cc3=zeros(len,1);
shuzigeshu=zeros(len,1);
dd=zeros(len,2);
ee=zeros(len,5);
hh=zeros(len,15);
ii=zeros(len,8);
jj=zeros(len,8);
kk=zeros(len,10);
ll=zeros(len,4);
shuziji={'0','1','2','3','4','5','6','7','8','9'};
    for jishu=1:len
       
        for jishu1=1:length(c{jishu})
            weizhi=[];
            for jishu2=1:10
                 weizhi=[weizhi strfind(c{jishu},shuziji{jishu2})];   
            end
            cc1(jishu)=length(weizhi);
            cc2(jishu)=cc1(jishu)/length(c{jishu});
           
            if(cc1(jishu)>0)
                cc3(jishu)=1;
            end
        end
            
%         %判断用户名中是否有数字
%         is_isletter0=strfind(c{jishu},'0');
%          is_isletter1=strfind(c{jishu},'1');
%           is_isletter2=strfind(c{jishu},'2');
%            is_isletter3=strfind(c{jishu},'3');
%             is_isletter4=strfind(c{jishu},'4');
%              is_isletter5=strfind(c{jishu},'5');
%               is_isletter6=strfind(c{jishu},'6');
%                is_isletter7=strfind(c{jishu},'7');
%                 is_isletter8=strfind(c{jishu},'8');
%                  is_isletter9=strfind(c{jishu},'9');
%       if  ~isempty( is_isletter0)|| ~isempty( is_isletter1)||~ isempty( is_isletter2)|| ~isempty( is_isletter3)|| ~isempty( is_isletter4)||~ isempty( is_isletter5)||~ isempty( is_isletter6)||~ isempty( is_isletter7)||~ isempty( is_isletter8)|| ~isempty( is_isletter9)
%           cc(jishu,1)=1;
%       end
   
     %将性别转为0和1
    if d{jishu}=='f'
        dd(jishu,:)=jid(1,:);
    else dd(jishu,:)=jid(2,:);
    end
    
    %自我介绍长度
    if e(jishu)~=0
        if(e(jishu)>0&&e(jishu)<=20)
            ee(jishu,2)=1;
        end
         if(e(jishu)>20&&e(jishu)<=50)
            ee(jishu,3)=1;
         end
         if(e(jishu)>50&&e(jishu)<=100)
            ee(jishu,4)=1;
         end
         if(e(jishu)>100)
            ee(jishu,5)=1;
         end
    else
        ee(jishu,1)=1;
    end
    
    %城市f
    %省份g
    
    %粉丝数
    if h(jishu)==0
        hh(jishu,1)=1;
    elseif(h(jishu)>0&&h(jishu)<=50)
        hh(jishu,2)=1;
    elseif(h(jishu)>50&&h(jishu)<=100)
        hh(jishu,3)=1;
    elseif(h(jishu)>100&&h(jishu)<=200)
        hh(jishu,5)=1;
    elseif(h(jishu)>200&&h(jishu)<=400)
        hh(jishu,6)=1;
    elseif(h(jishu)>400&&h(jishu)<=800)
        hh(jishu,7)=1;
    elseif(h(jishu)>800&&h(jishu)<=1000)
        hh(jishu,8)=1;
    elseif(h(jishu)>1000&&h(jishu)<=1500)
        hh(jishu,9)=1;
    elseif(h(jishu)>1500)&&h(jishu)<=3000
        hh(jishu,10)=1;
    elseif(h(jishu)>3000&&h(jishu)<=10000)
        hh(jishu,11)=1;
        elseif(h(jishu)>10000&&h(jishu)<=50000)
        hh(jishu,12)=1;
        elseif(h(jishu)>50000&&h(jishu)<=100000)
        hh(jishu,13)=1;
        elseif(h(jishu)>100000&&h(jishu)<=500000)
        hh(jishu,14)=1;
        elseif(h(jishu)>500000)
        hh(jishu,15)=1; 
    end
    
    %关注数
    if(i(jishu)==0)
       ii(jishu,1)=1;
    elseif(i(jishu)>0&&i(jishu)<=50)
        ii(jishu,2)=1;
    elseif(i(jishu)>50&&i(jishu)<=100)
        ii(jishu,3)=1;
    elseif(i(jishu)>100&&i(jishu)<=200)
        ii(jishu,4)=1;
    elseif(i(jishu)>200&&i(jishu)<=300)
        ii(jishu,5)=1;
    elseif(i(jishu)>300&&i(jishu)<=500)
        ii(jishu,6)=1;
    elseif(i(jishu)>500&&i(jishu)<=1000)
        ii(jishu,7)=1;
    else ii(jishu,8)=1;
    end

    
    %相互关注数
    if(j(jishu)==0)
       jj(jishu,1)=1;
    elseif(j(jishu)>0&&j(jishu)<=50)
        jj(jishu,2)=1;
    elseif(j(jishu)>50&&j(jishu)<=100)
        jj(jishu,3)=1;
    elseif(j(jishu)>100&&j(jishu)<=200)
        jj(jishu,4)=1;
    elseif(j(jishu)>200&&j(jishu)<=300)
        jj(jishu,5)=1;
    elseif(j(jishu)>300&&j(jishu)<=500)
        jj(jishu,6)=1;
    elseif(j(jishu)>500&&j(jishu)<=1000)
        jj(jishu,7)=1;
    else jj(jishu,8)=1;
    end
  
    
    %发微数
    if(k(jishu)==0)
       kk(jishu,1)=1;
    elseif(k(jishu)>0&&k(jishu)<=50)
        kk(jishu,2)=1;
         elseif(k(jishu)>50&&k(jishu)<=100)
        kk(jishu,3)=1;
         elseif(k(jishu)>100&&k(jishu)<=200)
        kk(jishu,4)=1;
         elseif(k(jishu)>200&&k(jishu)<=500)
        kk(jishu,5)=1;
         elseif(k(jishu)>500&&k(jishu)<=1000)
        kk(jishu,6)=1;
         elseif(k(jishu)>1000&&k(jishu)<=2000)
        kk(jishu,7)=1;
         elseif(k(jishu)>2000&&k(jishu)<=5000)
        kk(jishu,8)=1;
         elseif(k(jishu)>5000&&k(jishu)<=10000)
        kk(jishu,9)=1;
    else
        kk(jishu,10)=1;
    end
    
    
    %收藏数
    if(l(jishu)==0)
        ll(jishu,1)=1;
    elseif(l(jishu)>0&&ll(jishu)<50)
        ll(jishu,2)=1;
    elseif(l(jishu)>50&&ll(jishu)<100)
        ll(jishu,3)=1;
    else ll(jishu,4)=1;
    end
        
    ll(jishu,1)=l(jishu)/10000;
    
    %是否认证
    if strcmp(m{jishu},'flase')
        mm(jishu,1)=0;
    else mm(jishu,1)=1;
    end
        
    %认证类型
    if n(jishu)==-1
        nn(jishu,:)=jin(1,:);
    elseif n(jishu)==0
        nn(jishu,:)=jin(2,:);
        elseif n(jishu)==1
        nn(jishu,:)=jin(3,:);
        elseif n(jishu)==2
        nn(jishu,:)=jin(4,:);
        elseif n(jishu)==3
        nn(jishu,:)=jin(5,:);
        elseif n(jishu)==4
        nn(jishu,:)=jin(6,:);
        elseif n(jishu)==5
        nn(jishu,:)=jin(7,:);
        elseif n(jishu)==6
        nn(jishu,:)=jin(8,:);
        elseif n(jishu)==7
        nn(jishu,:)=jin(9,:);
        elseif n(jishu)==10
        nn(jishu,:)=jin(10,:);
        elseif n(jishu)==200
        nn(jishu,:)=jin(11,:);
        elseif n(jishu)==220
        nn(jishu,:)=jin(12,:);
    end
    end
    
    %转发总数
    %totalretweet(jishu)=totalretweet(jishu)/200;
    ji_totalretweet=eye(5);					
    if totalretweet(jishu)==0					
        totalretweet_(jishu,:)=ji_totalretweet(1,:);					
    elseif totalretweet(jishu)>0&&totalretweet(jishu)<=10					
        totalretweet_(jishu,:)=ji_totalretweet(2,:);					
        elseif totalretweet(jishu)>10&&totalretweet(jishu)<=50					
        totalretweet_(jishu,:)=ji_totalretweet(3,:);					
    elseif totalretweet(jishu)>50&&totalretweet(jishu)<=100					
        totalretweet_(jishu,:)=ji_totalretweet(4,:);					
    elseif totalretweet(jishu)>100&&totalretweet(jishu)<=200					
        totalretweet_(jishu,:)=ji_totalretweet(5,:);									
    end					

    
    %无意义转发
    notrealtext(jishu)=notrealtext(jishu)/200;
    
    %有意义转发
    realtext(jishu)=realtext(jishu)/200;
    
    %无意义转发比
    if(totalretweet(jishu)~=0)
        wuyiyizhuanfabi(jishu,1)=notrealtext(jishu)/totalretweet(jishu);
    else  wuyiyizhuanfabi(jishu,1)=1;
    end
      
    %二次转发
%     ji_rptcnt=eye(6);
%     if rptcnt(jishu)==0
%         rptcnt_(jishu,:)=ji_rptcnt(1,:);
%     elseif rptcnt(jishu)>0&&rptcnt(jishu)<=10
%         rptcnt_(jishu,:)=ji_rptcnt(2,:);
%         elseif rptcnt(jishu)>10&&rptcnt(jishu)<=50
%         rptcnt_(jishu,:)=ji_rptcnt(3,:);
%     elseif rptcnt(jishu)>50&&rptcnt(jishu)<=100
%         rptcnt_(jishu,:)=ji_rptcnt(4,:);
%     elseif rptcnt(jishu)>100&&rptcnt(jishu)<=200
%         rptcnt_(jishu,:)=ji_rptcnt(5,:);
%     elseif rptcnt(jishu)>200
%         rptcnt_(jishu,:)=ji_rptcnt(6,:);
%     end
    
     for jishu=1:len
         if(totalretweet(jishu)~=0)
             rptcnt_(jishu,1)=rptcnt(jishu)/totalretweet(jishu);
         else rptcnt_(jishu,1)=0;
         end
     end
        
    %评论数
%     ji_cmtcnt=eye(6);
%     if cmtcnt(jishu)==0
%         cmtcnt_(jishu,:)=ji_cmtcnt(1,:);
%     elseif cmtcnt(jishu)>0&&cmtcnt(jishu)<=10
%         cmtcnt_(jishu,:)=ji_cmtcnt(2,:);
%         elseif cmtcnt(jishu)>10&&cmtcnt(jishu)<=50
%         cmtcnt_(jishu,:)=ji_cmtcnt(3,:);
%     elseif cmtcnt(jishu)>50&&cmtcnt(jishu)<=100
%         cmtcnt_(jishu,:)=ji_cmtcnt(4,:);
%     elseif cmtcnt(jishu)>100&&cmtcnt(jishu)<=200
%         cmtcnt_(jishu,:)=ji_cmtcnt(5,:);
%     elseif cmtcnt(jishu)>200
%         cmtcnt_(jishu,:)=ji_cmtcnt(6,:);
%     end
    for jishu=1:len
         if(totalretweet(jishu)~=0)
             cmtcnt_(jishu,1)=cmtcnt(jishu)/totalretweet(jishu);
         else cmtcnt_(jishu,1)=0;
         end
     end
    
    data=[b cc2 dd ee hh ii jj ll mm nn  kk wuyiyizhuanfabi  rptcnt_  cmtcnt_ ];%totalretweet  notrealtext realtext  totalretweet_
end