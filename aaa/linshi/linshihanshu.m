% 
% [WW alldata_cha_train xuyaodeshuxing]=tezhengxuanze_relief_guiyihua_maxmin_changedsamples_tezhengfenx(39);
% dijige=1;
% count_linshi=zeros(100,6);%size(count,2));
% % for cishu=100:2:150
% for cishu=1:5:71%1:5:100+1%40:1:60
%     fprintf('����ά��:%d',cishu);
%     for shiyancishu=1:2
%         load('C:\Users\admini\Desktop\���ݺ�Ȩ��.mat');
%         %%%%%%%%%%
%         ordernum=[1:size(alldata,2)-2]';
%         aftersorting=-sortrows(-[(sum(weightoffeatures(:,1:size(alldata,2)-2)))' ordernum],1);
%         xuyaodeshuxing=aftersorting(:,2);
%         numoffeatures=cishu;%����ά��
%         alldata=[ alldata(:,xuyaodeshuxing(1:numoffeatures)) alldata(:,end-1:end)];
%         save 'C:\Users\admini\Desktop\woca11.mat' alldata%������Լ�
%         alldata_test=[ alldata_test(:,xuyaodeshuxing(1:numoffeatures)) alldata_test(:,end-1:end)];
%         save 'C:\Users\admini\Desktop\data4test.mat' alldata_test%������Լ�
% %                 tezhengxuanze_relief_guiyihua_maxmin_changedsamples_tezhengfenx(cishu);
%         DBNExperiment;
%         count_linshi(dijige,:)=count_linshi(dijige,:)+[sum(count_train) sum(count)];
%     end
%     dijige=dijige+1;
%     %     save 'C:\Users\admini\Desktop\jishuqi_linshi1.mat' count_linshi%������Լ�
% end
% 
% save 'C:\Users\admini\Desktop\linshihanshuʵ����1.mat' count_linshi%������Լ�
% 
% 
% for cishu=39%1:5:100+1%40:1:60
%     fprintf('����ά��:%d',cishu);
%     for shiyancishu=1
%         load('C:\Users\admini\Desktop\���ݺ�Ȩ��.mat');
%         %%%%%%%%%%
%         ordernum=[1:size(alldata,2)-2]';
%         aftersorting=-sortrows(-[(sum(weightoffeatures(:,1:size(alldata,2)-2)))' ordernum],1);
%         xuyaodeshuxing=aftersorting(:,2);
%         numoffeatures=cishu;%����ά��
%         alldata=[ alldata(:,xuyaodeshuxing(1:numoffeatures)) alldata(:,end-1:end)];
%         save 'C:\Users\admini\Desktop\woca11.mat' alldata%������Լ�
%         alldata_test=[ alldata_test(:,xuyaodeshuxing(1:numoffeatures)) alldata_test(:,end-1:end)];
%         save 'C:\Users\admini\Desktop\data4test.mat' alldata_test%������Լ�
% %                 tezhengxuanze_relief_guiyihua_maxmin_changedsamples_tezhengfenx(cishu);
%         mnistclassify;
%         Experiment4Student;     
%     end
%     dijige=dijige+1;
%     %     save 'C:\Users\admini\Desktop\jishuqi_linshi1.mat' count_linshi%������Լ�
% end


%%%%%%%%%%%%%%%ʵ����������������ά��+ʮ�ֽ���%%%%%%%%%%%%%
Num_features=[15 30 50 75 151];
Counter4Result = zeros(6,6);
for i=1:5
    OrderNum = randperm(151);
    load 'C:\Users\admini\Desktop\woca911.mat'
    alldata = [alldata(:,OrderNum(1:Num_features(i))) alldata(:,end-1:end)];%ѡȡ����+���
    save C:\Users\admini\Desktop\woca911_1.mat alldata
    DBNExperiment;
    Counter4Result(i,1:3)=sum(count_train);
    Counter4Result(i,4:6)=sum(count);
end
