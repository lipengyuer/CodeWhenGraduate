%功能：将个人资料转换为属性值，其中部分属性值最后转为01序列
function [alldata]=zhuanhuanshuxing1(s1,s2)
[a b c d e f g h i j k l m n totalretweet notrealtext realtext kehuduanshu rptcnt cmtcnt]=textread(s1,'%s%n%s%s%d%d%d%d%d%d%d%d%s%d%d%d%d%d%d%d','headerlines',0);

b=abs(b);

%转换属性值
len=length(a);
hanshuzi=0;

% bb=b/max(b);
%%%%%%所需的01序列%%%%%
jid=eye(2);%
jin=eye(12);
cc1=zeros(len,1);
cc2=cc1;
cc3=zeros(len,1);
dd=zeros(len,2);
ee=zeros(len,5);
hh=zeros(len,15);
ii=zeros(len,10);
jj=zeros(len,8);
kk=zeros(len,10);
ll=zeros(len,4);
shuziji={'0','1','2','3','4','5','6','7','8','9'};
%%%%%%%%所需的01序列end%%%%%%%%%%%%%

    for jishu=1:len
       
        %标签（类别）
        if strcmp(a{jishu},'norm')%正常用户
            zheng(jishu,:)=[1 0];
        else zheng(jishu,:)=[0 1];%垃圾用户
        end
        
        %用户名
        for jishu1=1:length(c{jishu})
            weizhi=[];
            for jishu2=1:10
                 weizhi=[weizhi strfind(c{jishu},shuziji{jishu2})];   
            end
            cc1(jishu)=length(weizhi);
            cc2(jishu)=cc1(jishu)/length(c{jishu});%数字个数/用户名长度
           
            if(cc1(jishu)>0)
                cc3(jishu)=1;
            end
        end
            
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
    elseif(i(jishu)>1000&&i(jishu)<=1200)
        ii(jishu,8)=1;
        elseif(i(jishu)>1200&&i(jishu)<=1500)
        ii(jishu,9)=1;
        elseif(i(jishu)>1500&&i(jishu)<=2000)
        ii(jishu,10)=1;
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
        mm(jishu,:)=[0 1];
    else mm(jishu,:)=[1 0];
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
      
    %转发总数
    %totalretweet(jishu)=totalretweet(jishu)/200;
    ji_totalretweet=eye(7);					
    if totalretweet(jishu)==0					
        totalretweet_(jishu,:)=ji_totalretweet(1,:);					
    elseif totalretweet(jishu)>0&&totalretweet(jishu)<=10					
        totalretweet_(jishu,:)=ji_totalretweet(2,:);					
        elseif totalretweet(jishu)>10&&totalretweet(jishu)<=30					
        totalretweet_(jishu,:)=ji_totalretweet(3,:);					
    elseif totalretweet(jishu)>30&&totalretweet(jishu)<=60					
        totalretweet_(jishu,:)=ji_totalretweet(4,:);					
    elseif totalretweet(jishu)>60&&totalretweet(jishu)<=100				
        totalretweet_(jishu,:)=ji_totalretweet(5,:);	
        elseif totalretweet(jishu)>100&&totalretweet(jishu)<=150				
        totalretweet_(jishu,:)=ji_totalretweet(6,:);	
        elseif totalretweet(jishu)>150&&totalretweet(jishu)<=200			
        totalretweet_(jishu,:)=ji_totalretweet(7,:);	
    end
    
    %无意义转发
    notrealtext(jishu)=notrealtext(jishu)/totalretweet(jishu);
    
    %有意义转发
%     realtext(jishu)=realtext(jishu)/200;
    
    %无意义转发比
    if(totalretweet(jishu)~=0)
          wuyiyizhuanfabi(jishu,1)=notrealtext(jishu)/totalretweet(jishu);
    else  wuyiyizhuanfabi(jishu,1)=1;
    end
    
    %客户端数量
    if totalretweet(jishu)~=0
    kehuduanshu_(jishu,1)=kehuduanshu(jishu)/totalretweet(jishu);
    else kehuduanshu_(jishu,1)=0;
    end
    
    end
  
    
   
    
    %二次转发
     for jishu=1:len
         if(totalretweet(jishu)~=0)
             rptcnt_(jishu,1)=rptcnt(jishu)/totalretweet(jishu);
         else rptcnt_(jishu,1)=0;
         end
     end
        
    %评论数
    for jishu=1:len
         if(totalretweet(jishu)~=0)
             cmtcnt_(jishu,1)=cmtcnt(jishu)/totalretweet(jishu);
         else cmtcnt_(jishu,1)=0;
         end
    end
     
    %时序数据傅里叶变换
%     ji_shixu=eye(12);
    other=load(s2)/200;
    other1=abs(other(:,2:end));
%     for jishu=1:len
%         for jishu1=1:144
%             if other1(jishu,jishu1)==0;
%                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(1,:);
%             elseif other1(jishu,jishu1)>0&&other1(jishu,jishu1)<=12;
%                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(2,:);
%              elseif other1(jishu,jishu1)>12&&other1(jishu,jishu1)<=20;
%                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(3,:);
%                  elseif other1(jishu,jishu1)>20&&other1(jishu,jishu1)<=30;
%                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(4,:);
%                  elseif other1(jishu,jishu1)>30&&other1(jishu,jishu1)<=40;
%                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(5,:);
%                  elseif other1(jishu,jishu1)>40&&other1(jishu,jishu1)<=50;
%                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(6,:);
%                  elseif other1(jishu,jishu1)>50&&other1(jishu,jishu1)<=60;
% %                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(7,:);
% %                  elseif other1(jishu,jishu1)>60&&other1(jishu,jishu1)<=70;
% %                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(8,:);
% %                  elseif other1(jishu,jishu1)>70&&other1(jishu,jishu1)<=80;
% %                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(9,:);
% %                  elseif other1(jishu,jishu1)>80&&other1(jishu,jishu1)<=120;
% %                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(12,:);
% %                  elseif other1(jishu,jishu1)>120&&other1(jishu,jishu1)<=150;
% %                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(11,:);
% %                  elseif other1(jishu,jishu1)>150&&other1(jishu,jishu1)<=200;
% %                 other_(jishu,((jishu1-1)*12+1):jishu1*12)=ji_shixu(12,:);
%             end
%         end
%     end
%                 
%                 
                
                
    
    alldata=[zheng b cc2 dd ee hh ii jj ll mm nn  kk wuyiyizhuanfabi  kehuduanshu_  rptcnt_  cmtcnt_];% other1/200];%totalretweet  notrealtext realtext  totalretweet_ 
   
end