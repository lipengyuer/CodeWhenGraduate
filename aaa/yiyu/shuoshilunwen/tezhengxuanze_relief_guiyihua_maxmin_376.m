function [WW alldata_train alldata]=tezhengxuanze_relief_guiyihua_maxmin_376(cishu)
load C:\Users\admini\Desktop\aaaaa\depression\dataof376\计算属性值用数据.mat
% load C:\Users\admini\Desktop\aaaaa\depression\表情符号原始数据.mat
%%%%%%%%%%%%%%词频%%%%
yuzhi_shiyongpinci_ciyu=0.1;
x=Cipin0613;

a=x(1:142,:);
b=x(143:end,:);
a1=a(:,:);
b1=b(:,:);
aa=sum(a1,2)+0.000001;
bb=sum(b1,2)+0.000001;
cipin_1_ciyu=a1./repmat(aa,1,size(a1,2));
cipin_2_ciyu=b1./repmat(bb,1,size(b1,2));
cipin_1_mean=mean(cipin_1_ciyu);
cipin_2_mean=mean(cipin_2_ciyu);
clear a b a1 b1 aa bb;
% weizhi_buyiyu=1:8921;
fprintf('处理词频');
data_cipin=[cipin_1_ciyu;cipin_2_ciyu];
weizhi_cipinnotzero= find(sum(data_cipin)>yuzhi_shiyongpinci_ciyu);
% weizhi_cipinnotzero= find(sum(data_cipin)>yuzhi_shiyongpinci_ciyu);
data_cipin_=data_cipin(:,weizhi_cipinnotzero);
[data_cipin_guiyihua guiyihuamoban_cipin]=mapminmax(data_cipin_);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%词频

%%%%%%%%表情符号%%%%
yuzhi_shiyongpinci_bqfh=0.1;
x=[cipin0425_1qgfh1;cipin0425_2qgfh1];

a=x(1:142,:);
b=x(143:end,:);
a1=a(:,:);
b1=b(:,:);
aa=sum(a1,2)+0.000001;
bb=sum(b1,2)+0.000001;
cipin_1_ciyuqgfh=a1./repmat(aa,1,size(a1,2));
cipin_2_ciyuqgfh=b1./repmat(bb,1,size(b1,2));
clear a b a1 b1 aa bb;
data_bqfh=[cipin_1_ciyuqgfh; cipin_2_ciyuqgfh];
weizhi_bqfhnozero= find(sum(data_bqfh)>yuzhi_shiyongpinci_bqfh);
data_bqfh_=data_bqfh(:,weizhi_bqfhnozero);
[data_bqfh_guiyihua guiyihuamoban_bqfh]=mapminmax(data_bqfh_);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

%%%%%%%%%%%%%发微时间%%%
fawei_num=zhenheji';
fawei_num_yiyu=fawei_num(1:142,:);
fawei_num_buyiyu=fawei_num(143:end,:);
faweifenbu_yiyu=fawei_num_yiyu./repmat(sum(fawei_num_yiyu,2),1,size(fawei_num_yiyu,2));
faweifenbu_buyiyu=fawei_num_buyiyu./repmat(sum(fawei_num_buyiyu,2),1,size(fawei_num_buyiyu,2));
% fawei_num_hit=zhenheji_hit';
% faweifenbu_hit=fawei_num_hit./repmat(sum(fawei_num_hit,2),1,size(fawei_num_hit,2));
data_fawei=[faweifenbu_yiyu;faweifenbu_buyiyu];
weizhi_faweinozero= sum(data_fawei)>0;
data_fawei_=data_fawei(:,weizhi_faweinozero);
[data_fawei_guiyihua guiyihuamoban_fawei]=mapminmax(data_fawei_);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%粉丝关注%%%%%%%%%%%
% load C:\Users\admini\Desktop\aaaaa\depression\粉丝和关注数据.mat
data_Eco=fansfollnum(:,1:2);
[data_Eco_guiyihua guiyihuamoban_Eco]=mapminmax(data_Eco);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label=[ones(142,1);zeros(234,1)];
label=[label 1-label];%标签

alldata1=[data_cipin_guiyihua data_bqfh_guiyihua data_fawei_guiyihua data_Eco_guiyihua];%所有数据
alldata=1./(1+exp(-alldata1));
alldata=[alldata label];
save 'C:\Users\admini\Desktop\用来归一化的参数.mat' guiyihuamoban_cipin guiyihuamoban_bqfh guiyihuamoban_fawei  guiyihuamoban_Eco%存储用以归一化新数据的参数

chang=size(alldata,1);
xuhao=randperm(chang);
data1=[xuhao' [1:chang]' alldata];
data2=sortrows(data1,1);
alldata_train=data2(1:300,3:end);
alldata_test=data2(301:end,3:end);

%%%%%%%%%%%%%%%%
for m=1:20
[Woffeatures]= Relief([alldata_train(:,1:end-1)],50,1);
WW(m,:)=Woffeatures;
end
save 'C:\Users\admini\Desktop\数据和权重.mat' alldata_train alldata_test WW%保存测试集
load('C:\Users\admini\Desktop\数据和权重.mat');
%%%%%%%%%%
ordernum=[1:size(alldata_train,2)-2]';
aftersorting=-sortrows(-[(sum(WW))' ordernum],1);
xuyaodeshuxing=aftersorting(:,2);
numoffeatures=cishu;%特征维数
alldata=[ alldata_train(:,xuyaodeshuxing(1:numoffeatures)) alldata_train(:,end-1:end)];
save 'C:\Users\admini\Desktop\woca11.mat' alldata%保存测试集
alldata_test=[ alldata_test(:,xuyaodeshuxing(1:numoffeatures)) alldata_test(:,end-1:end)];
save 'C:\Users\admini\Desktop\data4test.mat' alldata_test%保存测试集
%%%%%%修改标签end%%%%%%
save 'C:\Users\admini\Desktop\各种位置.mat' weizhi_cipinnotzero weizhi_bqfhnozero xuyaodeshuxing%保存频次不为零的词语和符号在词典中的位置；挑出来的特征在剩余特征中的位置
