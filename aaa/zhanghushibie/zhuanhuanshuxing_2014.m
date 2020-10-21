%功能：将个人资料转换为属性值，其中部分属性值最后转为01序列
function [alldata]=zhuanhuanshuxing_2014(s1)
[id name createdDate city description followersCount followedCount BiFollowersCount gender location verifiedType statusCount]=textread(s1,'%s%s%s%s%s%d%d%d%s%s%s%d','headerlines',0);

%转换属性值
len=length(id);
hanshuzi=0;

%%%%%%所需的01序列%%%%%

%%%%%%%%所需的01序列end%%%%%%%%%%%%%
shuziji={'0','1','2','3','4','5','6','7','8','9'};
%%%%%%%%所需的01序列end%%%%%%%%%%%%%

    for jishu=1:len
%         %标签（类别）
%         if strcmp(a{jishu},'norm')%正常用户
%             zheng(jishu,:)=[1 0];
%         else zheng(jishu,:)=[0 1];%垃圾用户
%         end
        
        %用户名
        for jishu1=1:length(name{jishu})
            weizhi=[];
            for jishu2=1:10
                 weizhi=[weizhi strfind(name{jishu},shuziji{jishu2})];   
            end
            len_name(jishu)=length(weizhi);
            rate_numinname(jishu,1)=len_name(jishu)/length(name{jishu});%数字个数/用户名长度
        end
            
     %将性别转为0和1
    if gender{jishu}=='f'
        gender_b(jishu,:)=[1 0];
    else gender_b(jishu,:)=[0 1];
    end
    
    %自我介绍长度,转为【0 0 0 0 1】等五个等级
    len_description(jishu) = length(description{jishu});
    if len_description(jishu)~=0
        if(len_description(jishu) > 0 && len_description(jishu) <= 20)
            len_description_b(jishu,:)=[0 0 0 0 1];
        end
         if(len_description(jishu) > 20 && len_description(jishu) <= 50)
            len_description_b(jishu,:)=[0 0 0 1 0];
         end
         if(len_description(jishu) > 50 && len_description(jishu) <= 100)
            len_description_b(jishu,:)=[0 0 1 0 0];
         end
         if(len_description(jishu) > 100)
            len_description_b(jishu,:)=[0 1 0 0 0];
         end
    else
        len_description_b(jishu,:)=[1 0 0 0 0];
    end
    
    %粉丝数
    if followersCount(jishu)==0
        followersCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 0 0 0 0 1];
    elseif(followersCount(jishu)>0&&followersCount(jishu)<=50)
        followersCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 0 0 0 1 0];
    elseif(followersCount(jishu)>50&&followersCount(jishu)<=100)
        followersCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 0 0 1 0 0];
    elseif(followersCount(jishu)>100&&followersCount(jishu)<=200)
        followersCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 0 1 0 0 0];
    elseif(followersCount(jishu)>200&&followersCount(jishu)<=400)
        followersCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 1 0 0 0 0];
    elseif(followersCount(jishu)>400&&followersCount(jishu)<=800)
        followersCount_b(jishu,:)=[0 0 0 0 0 0 0 0 1 0 0 0 0 0];
    elseif(followersCount(jishu)>800&&followersCount(jishu)<=1000)
        followersCount_b(jishu,:)=[0 0 0 0 0 0 0 1 0 0 0 0 0 0];
    elseif(followersCount(jishu)>1000&&followersCount(jishu)<=1500)
        followersCount_b(jishu,:)=[0 0 0 0 0 0 1 0 0 0 0 0 0 0];
    elseif(followersCount(jishu)>1500)&&followersCount(jishu)<=3000
        followersCount_b(jishu,:)=[0 0 0 0 0 1 0 0 0 0 0 0 0 0];
    elseif(followersCount(jishu)>3000&&followersCount(jishu)<=10000)
        followersCount_b(jishu,:)=[0 0 0 0 1 0 0 0 0 0 0 0 0 0];
        elseif(followersCount(jishu)>10000&&followersCount(jishu)<=50000)
        followersCount_b(jishu,:)=[0 0 0 1 0 0 0 0 0 0 0 0 0 0];
        elseif(followersCount(jishu)>50000&&followersCount(jishu)<=100000)
        followersCount_b(jishu,:)=[0 0 1 0 0 0 0 0 0 0 0 0 0 0];
        elseif(followersCount(jishu)>100000&&followersCount(jishu)<=500000)
        followersCount_b(jishu,:)=[0 1 0 0 0 0 0 0 0 0 0 0 0 0];
        elseif(followersCount(jishu)>500000)
        followersCount_b(jishu,:)=[1 0 0 0 0 0 0 0 0 0 0 0 0 0]; 
    end
    
    %关注数
    if(followedCount(jishu)==0)
       followedCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 0 1];
    elseif(followedCount(jishu)>0&&followedCount(jishu)<=50)
        followedCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 1 0];
    elseif(followedCount(jishu)>50&&followedCount(jishu)<=100)
        followedCount_b(jishu,:)=[0 0 0 0 0 0 0 0 1 0 0];
    elseif(followedCount(jishu)>100&&followedCount(jishu)<=200)
        followedCount_b(jishu,:)=[0 0 0 0 0 0 0 1 0 0 0];
    elseif(followedCount(jishu)>200&&followedCount(jishu)<=300)
        followedCount_b(jishu,:)=[0 0 0 0 0 0 1 0 0 0 0];
    elseif(followedCount(jishu)>300&&followedCount(jishu)<=500)
        followedCount_b(jishu,:)=[0 0 0 0 0 1 0 0 0 0 0];
    elseif(followedCount(jishu)>500&&followedCount(jishu)<=1000)
        followedCount_b(jishu,:)=[0 0 0 0 1 0 0 0 0 0 0];
    elseif(followedCount(jishu)>1000&&followedCount(jishu)<=1200)
        followedCount_b(jishu,:)=[0 0 0 1 0 0 0 0 0 0 0];
        elseif(followedCount(jishu)>1200&&followedCount(jishu)<=1500)
        followedCount_b(jishu,:)=[0 0 1 0 0 0 0 0 0 0 0];
        elseif(followedCount(jishu)>1500&&followedCount(jishu)<=2000)
        followedCount_b(jishu,:)=[0 1 0 0 0 0 0 0 0 0 0];
    else followedCount_b(jishu,:)=[1 0 0 0 0 0 0 0 0 0 0];
    end

    
    %相互关注数
    if(BiFollowersCount(jishu)==0)
       BiFollowersCount_b(jishu,:)=[0 0 0 0 0 0 0 1];
    elseif(BiFollowersCount(jishu)>0&&BiFollowersCount(jishu)<=50)
        BiFollowersCount_b(jishu,:)=[0 0 0 0 0 0 1 0];
    elseif(BiFollowersCount(jishu)>50&&BiFollowersCount(jishu)<=100)
        BiFollowersCount_b(jishu,:)=[0 0 0 0 0 1 0 0];
    elseif(BiFollowersCount(jishu)>100&&BiFollowersCount(jishu)<=200)
        BiFollowersCount_b(jishu,:)=[0 0 0 0 1 0 0 0];
    elseif(BiFollowersCount(jishu)>200&&BiFollowersCount(jishu)<=300)
        BiFollowersCount_b(jishu,:)=[0 0 0 1 0 0 0 0];
    elseif(BiFollowersCount(jishu)>300&&BiFollowersCount(jishu)<=500)
        BiFollowersCount_b(jishu,:)=[0 0 1 0 0 0 0 0];
    elseif(BiFollowersCount(jishu)>500&&BiFollowersCount(jishu)<=1000)
        BiFollowersCount_b(jishu,:)=[0 1 0 0 0 0 0 0];
    else BiFollowersCount_b(jishu,:)=[1 0 0 0 0 0 0 0];
    end
  
    
    %发微数
    if(statusCount(jishu)==0)
       statusCount_b(jishu,:)=[0 0 0 0 0 0 0 0 0 1];
    elseif(statusCount(jishu)>0&&statusCount(jishu)<=50)
        statusCount_b(jishu,:)=[0 0 0 0 0 0 0 0 1 0];
         elseif(statusCount(jishu)>50&&statusCount(jishu)<=100)
        statusCount_b(jishu,:)=[0 0 0 0 0 0 0 1 0 0];
         elseif(statusCount(jishu)>100&&statusCount(jishu)<=200)
        statusCount_b(jishu,:)=[0 0 0 0 0 0 1 0 0 0];
         elseif(statusCount(jishu)>200&&statusCount(jishu)<=500)
        statusCount_b(jishu,:)=[0 0 0 0 0 1 0 0 0 0];
         elseif(statusCount(jishu)>500&&statusCount(jishu)<=1000)
        statusCount_b(jishu,:)=[0 0 0 0 1 0 0 0 0 0];
         elseif(statusCount(jishu)>1000&&statusCount(jishu)<=2000)
        statusCount_b(jishu,:)=[0 0 0 1 0 0 0 0 0 0];
         elseif(statusCount(jishu)>2000&&statusCount(jishu)<=5000)
        statusCount_b(jishu,:)=[0 0 1 0 0 0 0 0 0 0];
         elseif(statusCount(jishu)>5000&&statusCount(jishu)<=10000)
        statusCount_b(jishu,:)=[0 1 0 0 0 0 0 0 0 0];
    else
        statusCount_b(jishu,:)=[1 0 0 0 0 0 0 0 0 0];
    end
    end
    alldata=[rate_numinname gender_b len_description_b followersCount_b followedCount_b BiFollowersCount_b statusCount_b];% other1/200];%totalretweet  notrealtext realtext  totalretweet_ 
   
end