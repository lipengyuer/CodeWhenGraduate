% % % 发布微博数量分布分析
% faweifenbu=test';%所有发布微博数量
% meirentianshu=tianshu';%获取的微博时间跨度
% f1=faweifenbu(1:108,:);%抑郁者的
% f2=faweifenbu(109:end,:);
% ff1=f1./repmat(sum(f1,2),1,144);%求各时段发布微博所占比例
% ff2=f2./repmat(sum(f2,2),1,144);
% % plot(10*sum(ff1)/108,'r');hold on,plot(10*sum(ff2)/273,'g');%显示两类人对应的平均百分比
% % 
% % figure;
% % plot(sum(f1./repmat(tianshu(1:108),1,144))/108,'r');hold on,plot(sum(f2./repmat(tianshu(109:end),1,144))/273,'g');%显示两类人对应的平均数量
% 
% %平均每天发布微博数量，平均水平分析
% num_perday1=sum(f1,2)./meirentianshu(1:108);
% num_perday2=sum(f2,2)./meirentianshu(109:end);
% mean_num_perday1=mean(num_perday1);
% mean_num_perday2=mean(num_perday2);
% sd_num_perday1=(sum((num_perday1-mean_num_perday1).^2)).^0.5;
% sd_num_perday2=(sum((num_perday2-mean_num_perday2).^2)).^0.5;

%粉丝数和关注数
% fenshu=UserInfor_EcoNetworkDegree;
% fenshu(318,:)=[];
% fenshu(2,:)=[];%第二个和第318个是大号，不管了
% % num_fans1=fenshu(1:107,1);
% % num_fans2=fenshu(108:end,1);
% % num_fols1=fenshu(1:107,2);
% % num_fols2=fenshu(108:end,2);
% % num_bios1=fenshu(1:107,3);
% % num_bios2=fenshu(108:end,3);
% % 
% % mean_num_fans1=mean(num_fans1);
% % sd_zisuan=std(num_fans1);
% % sd_num_perday1=(sum((num_fans1-mean_num_fans1).^2)/106).^0.5;
% % mean_num_fans2=mean(num_fans2);
% % mean_num_fols1=mean(num_fols1);
% % mean_num_fols2=mean(num_fols2);
% % mean_num_bios1=mean(num_bios1);
% % mean_num_bios2=mean(num_bios2);
% pinlvfenbu_fans1=tongjipinlvfenbu(fenshu(1:107,1));
% pinlvfenbu_fans2=tongjipinlvfenbu(fenshu(108:end,1));
% pinlvfenbu_fols1=tongjipinlvfenbu(fenshu(1:107,2));
% pinlvfenbu_fols2=tongjipinlvfenbu(fenshu(108:end,2));
% pinlvfenbu_bios1=tongjipinlvfenbu(fenshu(1:107,3));
% pinlvfenbu_bios2=tongjipinlvfenbu(fenshu(108:end,3));
% figure;
% % subplot(3,1,1),
% plot(100*pinlvfenbu_fans1/107,'*-');hold on,plot(100*pinlvfenbu_fans2/272,'o-');
% figure;
% % subplot(3,1,2),
% plot(100*pinlvfenbu_fols1/107,'*-');hold on,plot(100*pinlvfenbu_fols2/272,'o-');
% figure;
% % subplot(3,1,3),
% plot(100*pinlvfenbu_bios1/107,'*-');hold on,plot(100*pinlvfenbu_bios2/272,'o-');


%表情符号
fenbu_biaoqingfuhao_100w=BiaoqingFuhao100w/sum(BiaoqingFuhao100w);
fenbu_biaoqingfuhao=qingganfuhao./(repmat(sum(qingganfuhao,2),1,268)+0.000001);
fenbu_biaoqingfuhao_1=sum(fenbu_biaoqingfuhao(1:108,:))/108;
fenbu_biaoqingfuhao_2=sum(fenbu_biaoqingfuhao(109:end,:))/273;
% plot(fenbu_biaoqingfuhao_100w);hold on,plot(fenbu_biaoqingfuhao_1,'-r');hold on,plot(fenbu_biaoqingfuhao_2,'-g');
%分析三种极性的表情符号的使用情况
% jixing=BiaoqingFuhao100w_jixing;
% num_fumian=1;
% num_zhengmian=1;
% num_zhongxing=1;
% for m=1:268
%     if(jixing(m)==-1)
%         fenbu_biaoqingfuhao_100w_fumian(num_fumian)=fenbu_biaoqingfuhao_100w(m);
%          fenbu_biaoqingfuhao_1_fumian(num_fumian)=fenbu_biaoqingfuhao_1(m);
%           fenbu_biaoqingfuhao_2_fumian(num_fumian)=fenbu_biaoqingfuhao_2(m);
%         num_fumian=num_fumian+1;
%     elseif(jixing(m)==0)
%         fenbu_biaoqingfuhao_100w_zhongxing(num_zhongxing)=fenbu_biaoqingfuhao_100w(m);
%          fenbu_biaoqingfuhao_1_zhongxing(num_zhongxing)=fenbu_biaoqingfuhao_1(m);
%           fenbu_biaoqingfuhao_2_zhongxing(num_zhongxing)=fenbu_biaoqingfuhao_2(m);
%         num_zhongxing=num_zhongxing+1;
%     elseif(jixing(m)==1)
%         fenbu_biaoqingfuhao_100w_zhengmian(num_zhengmian)=fenbu_biaoqingfuhao_100w(m);
%          fenbu_biaoqingfuhao_1_zhengmian(num_zhengmian)=fenbu_biaoqingfuhao_1(m);
%           fenbu_biaoqingfuhao_2_zhengmian(num_zhengmian)=fenbu_biaoqingfuhao_2(m);
%         num_zhengmian=num_zhengmian+1;
%     end
% end
% figure;
%  plot(fenbu_biaoqingfuhao_100w_fumian);hold on,plot(fenbu_biaoqingfuhao_1_fumian,'-r');hold on,plot(fenbu_biaoqingfuhao_2_fumian,'-g');
%  figure;
%  plot(fenbu_biaoqingfuhao_100w_zhongxing);hold on,plot(fenbu_biaoqingfuhao_1_zhongxing,'-r');hold on,plot(fenbu_biaoqingfuhao_2_zhongxing,'-g');
%  figure;
%  plot(fenbu_biaoqingfuhao_100w_zhengmian);hold on,plot(fenbu_biaoqingfuhao_1_zhengmian,'-r');hold on,plot(fenbu_biaoqingfuhao_2_zhengmian,'-g');



