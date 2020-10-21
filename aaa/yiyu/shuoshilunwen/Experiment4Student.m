% % % % [zhenheji tianshu weiboshu zhenshitianshu nian2013faweitongji firstday lastday]=piliang_tongjifeweifenbu;
% % % % save 'C:\Users\admini\Desktop\aaaaa\depression\student\feature\微博数量数据.mat' zhenheji tianshu weiboshu zhenshitianshu nian2013faweitongji firstday lastday
% % % load('C:\Users\admini\Desktop\aaaaa\depression\student\feature\微博数量数据.mat');
% cishu = 39;%特征维数
% cipin = load('C:\Users\admini\Desktop\aaaaa\depression\student\feature\cipinofstudengt_all.txt');
% biaoqingfuhao = load('C:\Users\admini\Desktop\aaaaa\depression\student\feature\cipin_qingganfuhao_student.txt');
% load('C:\Users\admini\Desktop\aaaaa\depression\student\feature\微博数量数据.mat');%微博数量分布数据
% load('C:\Users\admini\Desktop\各种位置.mat');
% load('C:\Users\admini\Desktop\用来归一化的参数.mat');
% 
% %%%%%%%%词频%%%%%%
% x=cipin;
% xx=sum(x,2)+0.000001;
% cipin_=x./repmat(xx,1,size(x,2));
% cipin_1 = cipin_(:,weizhi_cipinnotzero);
% cipin_1_guiyuhua = mapminmax('apply',cipin_1',guiyihuamoban_cipin')';
% 
% 
% %%%%表情符号%%%%%%%%5
% x=biaoqingfuhao;
% xx=sum(x,2)+0.000001;
% cipin_=x./repmat(xx,1,size(x,2));
% cipin_1bqfh = cipin_(:,weizhi_bqfhnozero);
% cipin_1bqfh_guiyuhua = mapminmax('apply',cipin_1bqfh',guiyihuamoban_bqfh')';
% % 
% % %%%%%微博数量%%%%%%
% fawei_num=zhenheji';
% weiboshijianfenbu=fawei_num./(repmat(sum(fawei_num,2),1,size(fawei_num,2))+0.0001);
% weiboshijianfenbu_guiyuhua = mapminmax('apply',weiboshijianfenbu',guiyihuamoban_fawei')';
% % %%%%%%%%%%%%%5
% fansfolnum = load('C:\Users\admini\Desktop\aaaaa\depression\student\feature\fansfolnum.txt');
% fansfolnum_guiyuhua = mapminmax('apply',fansfolnum',guiyihuamoban_Eco')';
% 
% alldata1=[cipin_1_guiyuhua cipin_1bqfh_guiyuhua weiboshijianfenbu_guiyuhua fansfolnum_guiyuhua];
% alldata2 = alldata1(:,xuyaodeshuxing(1:cishu));
% alldatatata = 1./(1+exp(-alldata2));
% 
% mnistclassify;%训练模型
% % 
% % %%%%%%%%%%%%%%应用模型分类%%%%%%%%%%%%
%   shuru=alldatatata;
%   jishuqi=0;
%   wucha=0;
%   N=size(shuru,1);
%   shuru = [shuru ones(N,1)];
%   w1p = 1./(1 + exp(-shuru*w1)); w1p = [w1p  ones(N,1)];
%   w2p = 1./(1 + exp(-w1p*w2)); w2p = [w2p ones(N,1)];
%   w3p = 1./(1 + exp(-w2p*w3)); w3p = [w3p  ones(N,1)];
%   mubiaoout = exp(w3p*w_class);
%   mubiaoout = mubiaoout./repmat(sum(mubiaoout,2),1,2);
%   [CA LE]=max(mubiaoout,[],2);
% %   [CA1 LE1]=max(mubiao,[],2);
% %   jishuqi=jishuqi+length(find(LE==LE1));
% %   wucha = wucha- sum(sum( mubiao(:,1:end).*log(mubiaoout))) ;
%   ermubiaoout=mubiaoout;
%   for n=1:N
%     if(mubiaoout(n,1)>0.5)
%         ermubiaoout(n,:)=[1 0];
%     else
%         ermubiaoout(n,:)=[0 1];  
%     end
%   end
%   save 'C:\Users\admini\Desktop\学生抑郁状况.mat' ermubiaoout
% 
%   weizhi_uid_student_yiyu=find(ermubiaoout(:,1)==1);
%   weizhi_uid_student_buyiyu=find(ermubiaoout(:,1)==0);
% 
% %%%%%%%%两类用户的对比分析%%%%%%%%
% load('C:\Users\admini\Desktop\aaaaa\depression\student\对学生用户的分析1.mat');
% %%%%%%%词频%%
% cipin_student_yiyu=cipin_1(weizhi_uid_student_yiyu,:);
% cipin_student_buyiyu=cipin_1(weizhi_uid_student_buyiyu,:);
% [a1 weizhi_gaopinci_yiyu]=sort(-mean(cipin_student_yiyu));
% [a2 weizhi_gaopinci_buyiyu]=sort(-mean(cipin_student_buyiyu));
% 
% % 
% % x=Cipin0613;
% % xx=sum(x,2)+0.000001;
% % cipin_=x./repmat(xx,1,size(x,2));
% % % cipin_376 = cipin_(:,weizhi_cipinnotzero);
% % [a3 weizhi_gaopinci_376_buyiyu]=sort(-mean(cipin_(1:142,:)));
% 
% %%%%%%%%%微博数量与时间%%%%%%%%%
% weibofenbu_student_yiyu=weiboshijianfenbu(weizhi_uid_student_yiyu,:);
% weibofenbu_student_buyiyu=weiboshijianfenbu(weizhi_uid_student_buyiyu,:);
% figure;
% plot([1:24],sum(weibofenbu_student_yiyu)/290,'r');hold on,plot([1:24],sum(weibofenbu_student_buyiyu)/1212,'g');
% weiboshufenbu_student_yiyu=weibofenbu_student(weizhi_uid_student_yiyu,:)./(repmat(zhenshitianshu(weizhi_uid_student_yiyu)',1,24)+0.000001);
% weiboshufenbu_student_buyiyu=weibofenbu_student(weizhi_uid_student_buyiyu,:)./(repmat(zhenshitianshu(weizhi_uid_student_buyiyu)',1,24)+0.000001);
% figure;
% plot([1:24],sum(weiboshufenbu_student_yiyu)/290,'r');hold on,plot([1:24],sum(weiboshufenbu_student_buyiyu)/1212,'g');

%%%%%%性别与抑郁倾向%%%%
% Gender=load('C:\Users\admini\Desktop\aaaaa\depression\student\Gender.txt');
% Counter_GenderAndDepression=zeros(2,3);%两行分别存储男女的信息；三列分别是总数、抑郁倾向、正常
% for m=1:1502
%     if(Gender(m)==1)
%         Counter_GenderAndDepression(1,1)= Counter_GenderAndDepression(1,1)+1;
%         if(ermubiaoout(m,1)==1)
%             Counter_GenderAndDepression(1,2)= Counter_GenderAndDepression(1,2)+1;
%         else
%             Counter_GenderAndDepression(1,3)= Counter_GenderAndDepression(1,3)+1;
%         end
%     else
%         Counter_GenderAndDepression(2,1)= Counter_GenderAndDepression(2,1)+1;
%         if(ermubiaoout(m,1)==1)
%             Counter_GenderAndDepression(2,2)= Counter_GenderAndDepression(2,2)+1;
%         else
%             Counter_GenderAndDepression(2,3)= Counter_GenderAndDepression(2,3)+1;
%         end
%     end
% end

%%%%%%%%%关注的东西——提及率%%%%%%%%%
load('C:\Users\admini\Desktop\aaaaa\depression\student\对学生用户的分析1.mat');
x=cipin;%Cipin0613;
% for m=1:size(x,1)
%     for n=1:size(x,2)
%         if(x(m,n)>0)
%             x(m,n)=1;
%         end
%     end
% end
    
tiji_yiyu=x(weizhi_uid_student_yiyu,:);
tiji_buyiyu=x(weizhi_uid_student_buyiyu,:);
tijilv_yiyu=sum(tiji_yiyu)/290;
tijilv_buyiyu=sum(tiji_buyiyu)/1212;
[a weizhi_tijivgao_yiyu]=sort(-tijilv_yiyu);
[a weizhi_tijivgao_buyiyu]=sort(-tijilv_buyiyu);