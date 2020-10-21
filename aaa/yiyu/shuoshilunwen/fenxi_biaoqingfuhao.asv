% load C:\Users\admini\Desktop\aaaaa\depression\词频分析数据.mat;
load C:\Users\admini\Desktop\aaaaa\depression\表情符号原始数据.mat
x=[cipin0425_1qgfh1;cipin0425_2qgfh1];
a=x(1:108,:);
b=x(109:end,:);
weizhi1=find(sum(b)>0);
a1=a(:,:);
b1=b(:,:);
aa=sum(a1,2)+0.000001;
bb=sum(b1,2)+0.000001;
cipin_1_ciyu=a1./repmat(aa,1,size(a1,2));
cipin_2_ciyu=b1./repmat(bb,1,size(b1,2));

% %%%%检验词频均值%%%
% for m=1:size(a1,2)
%     h(m)=ztest(cipin_1_ciyu(:,m),mean(cipin_1_ciyu(:,m)),0.05);
% end;
cipindaxiao_buyiyu=-sort(-sum(cipin_2_ciyu));%将词频由大到小排列
cipindaxiao_yiyu=-sort(-sum(cipin_1_ciyu));%将词频由大到小排列
weizhi_buyiyu=[];
weizhi_yiyu=[];
for m=1:20%提取词语的个数
    weizhi_buyiyu=[weizhi_buyiyu find(sum(cipin_2_ciyu)==cipindaxiao_buyiyu(1,m))];
    weizhi_yiyu=[weizhi_yiyu find(sum(cipin_1_ciyu)==cipindaxiao_yiyu(1,m))];
end
figure;
plot(sum(cipin_1_ciyu(:,weizhi_buyiyu))/108,'r');hold on,plot(sum(cipin_2_ciyu(:,weizhi_buyiyu))/273);
data_cipin=[cipin_1_ciyu(:,weizhi_buyiyu);cipin_2_ciyu(:,weizhi_buyiyu)];%381的词频数据

num_qingganguhao_pianjun=QingganFuhaoTOngji(:,1)./weiboshu';
