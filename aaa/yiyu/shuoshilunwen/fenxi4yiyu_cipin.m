% x=cipin0430111;
% weizhi=find(sum(x)==0);
% weizhi1=find(sum(x)>0);
% x1=x(weizhi1);

yuzhi=0;
% all=cipin_0516;
pungjuncipin1=sum(cipin1,1)/108;
pungjuncipin2=sum(cipin2,1)/283;
pingjuncipin_1_1=pungjuncipin1(:,1                       :204);
pingjuncipin_1_2=pungjuncipin2(:,1                       :204);

pingjuncipin_2_1=pungjuncipin1(:,1+204                   :3114+204);
pingjuncipin_2_2=pungjuncipin2(:,1+204                   :3114+204);

pingjuncipin_3_1=pungjuncipin1(:,1+204+3114              :1252+3114+204);
pingjuncipin_3_2=pungjuncipin2(:,1+204+3114              :1252+3114+204);
pingjuncipin_4_1=pungjuncipin1(:,1+204+3114+1252         :3718+1252+3114+204);
pingjuncipin_4_2=pungjuncipin2(:,1+204+3114+1252         :3718+1252+3114+204);
pingjuncipin_5_1=pungjuncipin1(:,1+204+3114+1252+3718    :826+3718+1252+3114+204);
pingjuncipin_5_2=pungjuncipin2(:,1+204+3114+1252+3718    :826+3718+1252+3114+204);
pingjuncipin_6_1=pungjuncipin1(:,1+204+3114+1252+3718+826:end);%36+826+3718+1252+3114+204);
pingjuncipin_6_2=pungjuncipin2(:,1+204+3114+1252+3718+826:end);%36+826+3718+1252+3114+204);%各部分词的词频
weizhi=[findweizhioftopn(pingjuncipin_1_1,20);findweizhioftopn(pingjuncipin_1_2,20);findweizhioftopn(pingjuncipin_2_1,20)+204; findweizhioftopn(pingjuncipin_2_2,20)+204;
   findweizhioftopn(pingjuncipin_3_1,20)+204+3114 ;findweizhioftopn(pingjuncipin_3_2,20)+204+3114 ; findweizhioftopn(pingjuncipin_4_1,20)+204+3114+1252;findweizhioftopn(pingjuncipin_4_2,20)+204+3114+1252;
    findweizhioftopn(pingjuncipin_5_1,20)+204+3114+1252+3718; findweizhioftopn(pingjuncipin_5_2,20)+204+3114+1252+3718;findweizhioftopn(pingjuncipin_6_1,20)+204+3114+1252+3718+826;findweizhioftopn(pingjuncipin_6_2,20)+204+3114+1252+3718+826];
zongcishu=sum(all,2)+0.000001;%每个用户的总次数
cipin1=all(1:108,:)./repmat(zongcishu(1:108),1,size(all,2));
cipin2=all(109:end,:)./repmat(zongcishu(109:end),1,size(all,2));
plot(sum(cipin1)/108,'r');hold on,plot(sum(cipin2)/283,'g');
% weizhi1=find(sum(cipin_1)>yuzhi);%词频数总数大于阈值的位置
% weizhi2=find(sum(cipin_2)>yuzhi);
% weizhi3=find(sum(cipin_3)>yuzhi);
% weizhi4=find(sum(cipin_4)>yuzhi);
% weizhi5=find(sum(cipin_5)>yuzhi);
% weizhi6=find(sum(cipin_6)>yuzhi);
% 
% cipin_1_1=cipin_1(weizhi1);%选取词频数足够大的词
% cipin_2_1=cipin_2(weizhi2);
% cipin_3_1=cipin_3(weizhi3);
% cipin_4_1=cipin_4(weizhi4);
% cipin_5_1=cipin_5(weizhi5);
% cipin_6_1=cipin_6(weizhi6);
% 
% cipin_1_1_1=cipin_1_1(1:108,:)./repmat(zongcishu(1:108),1,length(weizhi1));
% cipin_1_1_2=cipin_1_1(109:end,:)./repmat(zongcishu(109:end),1,length(weizhi1));
% cipin_1_2_1=cipin_2_1(1:108,:)./repmat(zongcishu(1:108),1,length(weizhi2));
% cipin_1_2_2=cipin_2_1(109:end,:)./repmat(zongcishu(109:end),1,length(weizhi2));
% cipin_1_3_1=cipin_3_1(1:108,:)./repmat(zongcishu(1:108),1,length(weizhi3));
% cipin_1_3_2=cipin_3_1(109:end,:)./repmat(zongcishu(109:end),1,length(weizhi3));
% cipin_1_4_1=cipin_4_1(1:108,:)./repmat(zongcishu(1:108),1,length(weizhi4));
% cipin_1_4_2=cipin_4_1(109:end,:)./repmat(zongcishu(109:end),1,length(weizhi4));
% cipin_1_5_1=cipin_5_1(1:108,:)./repmat(zongcishu(1:108),1,length(weizhi5));
% cipin_1_5_2=cipin_5_1(109:end,:)./repmat(zongcishu(109:end),1,length(weizhi5));
% cipin_1_6_1=cipin_6_1(1:108,:)./repmat(zongcishu(1:108),1,length(weizhi6));
% cipin_1_6_2=cipin_6_1(109:end,:)./repmat(zongcishu(109:end),1,length(weizhi6));
% % cipin_6_1=cipin_6(weizhi6);
% 
% 
% plot(sum(cipin_1_1_1)/108,'r');hold on,plot(sum(cipin_1_1_2)/283,'g');
% figure;
% plot(sum(cipin_1_2_1)/108,'r');hold on,plot(sum(cipin_1_2_2)/283,'g');
% figure;
% plot(sum(cipin_1_3_1)/108,'r');hold on,plot(sum(cipin_1_3_2)/283,'g');
% figure;
% plot(sum(cipin_1_4_1)/108,'r');hold on,plot(sum(cipin_1_4_2)/283,'g');
% figure;
% plot(sum(cipin_1_5_1)/108,'r');hold on,plot(sum(cipin_1_5_2)/283,'g');
% figure;
% plot(sum(cipin_1_6_1)/108,'r');hold on,plot(sum(cipin_1_6_2)/283,'g');



