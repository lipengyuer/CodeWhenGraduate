
load 'C:\Users\admini\Desktop\data_Li.mat'
% chang=size(alldata,1);
% xuhao=randperm(chang);
% data1=[xuhao' [1:chang]' alldata];
% data2=sortrows(data1,1);
% alldata1=data2(1:300,3:end);
alldata1=alldata;
 num_fold=10;%折数
 count1=zeros(num_fold,6);%测试集中错误数;
for jishuqi= 1:num_fold
    fprintf('第%d个。',jishuqi);
    ftrain_x=alldata1(:,1:end-2);
    ftrain_y=alldata1(:,end-1);
    weizhi_test=1+(jishuqi-1)*30:30*jishuqi;
ftrain_x(weizhi_test,:)=[];%end-2);
ftrain_y(weizhi_test,:)=[];%end-1:end);
ftest_x=alldata1((1+(jishuqi-1)*30):30*jishuqi,1:end-2);%end-2);
ftest_y=alldata1((1+(jishuqi-1)*30:30*jishuqi),end-1);%end-1:end);
svmStruct = svmtrain(ftrain_x,ftrain_y,'KERNEL_FUNCTION','quadratic');
%%%%%%%%对训练集的分类效果%%%%
classes = svmclassify(svmStruct,ftrain_x);
weizhi1= classes>0.5;
classes(weizhi1)=1;
weizhi2= classes<=0.5;
classes(weizhi2)=0;

for n=1:size(classes,1)
    if(classes(n)~=ftrain_y(n));
        if(ftrain_y(n)==0)
            count1(jishuqi,2)=count1(jishuqi,2)+1;
        end
        if(ftrain_y(n)==1)
            count1(jishuqi,3)=count1(jishuqi,3)+1;
        end
        count1(jishuqi,1)=count1(jishuqi,1)+1;
    end
end

%%%%%%%%对测试集的分类效果%%%%
classes = svmclassify(svmStruct,ftest_x);
weizhi1= find(classes>0.5);
classes(weizhi1)=1;
weizhi2=find(classes<=0.5);
classes(weizhi2)=0;

for n=1:size(classes,1)
    if(classes(n)~=ftest_y(n));
        if(ftest_y(n)==0)
            count1(jishuqi,5)=count1(jishuqi,5)+1;
        end
        if(ftest_y(n)==1)
            count1(jishuqi,6)=count1(jishuqi,6)+1;
        end
        count1(jishuqi,4)=count1(jishuqi,4)+1;
    end
end
end