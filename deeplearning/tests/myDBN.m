%�����в����С�nan�������������˾��Ԥѵ���������뷴�򴫲���������Ҫ�ʵ���̫СЧ�����á��޷����ѵ��
indices = crossvalind('Kfold',indexFile,10);
result = 0;
% instance = alldata(:,1:end-2);
% label = alldata(:,end-1:end);
for i = 1:10
%create the train data and test data
test = (indices == i); train = ~test;
for j=1:1
   %indexForFeature = crossvalind('Kfold',feature,1);
   %featureIndex = (indexForFeature==j);
   train_x = instance(train,:);
   train_y = label(train,:);
   test_x = instance(test,:);
   test_y = label(test,:);


rand('state',0)
%train dbn
dbn.sizes = [50 50 90]; %�˴����������������Ĳ����Լ�ÿ��Ľڵ����
opts.numepochs =   250; %�˴�����ѭ������
opts.batchsize = 1; % �˴���������С
opts.momentum  =   0.1; %�˴����ö����Ĵ�С
opts.alpha     =   0.01;%�˴�����ѧϰ��
dbn = dbnsetup(dbn, train_x, opts); %�˴�����dbn
dbn = dbntrain(dbn, train_x, opts); %�˴�ѵ��dbn

%unfold dbn to nn
nn = dbnunfoldtonn(dbn, 2);% �˴��ĵڶ������������˷������Ŀ
nn.activation_function = 'sigm'; %�˴������˼����

%train nn
opts.numepochs =  250;%�˴�������ѭ������
opts.batchsize = 1; %�˴���������С
nn = nntrain(nn, train_x, train_y, opts);
[er, bad] = nntest(nn, test_x, test_y);
accuracy=1-er;
result = result + accuracy;
fprintf(' The temporal result is  %.4f . \n' , er)
end;
%assert(er > 0.10, 'Too big error');
end;
fprintf(' The last result is  %.4f . \n' , result/10)