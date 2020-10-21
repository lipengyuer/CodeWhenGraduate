%�����в����С�nan�������������˾��Ԥѵ���������뷴�򴫲���������Ҫ�ʵ���̫СЧ�����á��޷����ѵ��
% instance = alldata(:,1:end-2);
% label = alldata(:,end-1:end);

%create the train data and test data
indices = crossvalind('Kfold',unLabelGroup,20);
result = 0;
for i = 1:20
   train = (indices == i); 
   train_x = unInstance(train,:);
   train_y = unLabelForDBN(train,:);
   test_x = instance;
   test_y = LabelForDBN;


rand('state',0)
%train dbn
dbn.sizes = [50 50 90]; %�˴����������������Ĳ����Լ�ÿ��Ľڵ����
opts.numepochs =   250; %�˴�����ѭ������
opts.batchsize = 100; % �˴���������С
opts.momentum  =   0.1; %�˴����ö����Ĵ�С
opts.alpha     =   0.01;%�˴�����ѧϰ��
dbn = dbnsetup(dbn, train_x, opts); %�˴�����dbn
dbn = dbntrain(dbn, train_x, opts); %�˴�ѵ��dbn

%unfold dbn to nn
nn = dbnunfoldtonn(dbn, 2);% �˴��ĵڶ������������˷������Ŀ
nn.activation_function = 'sigm'; %�˴������˼����

%train nn
opts.numepochs =  250;%�˴�������ѭ������
opts.batchsize = 100; %�˴���������С
nn = nntrain(nn, train_x, train_y, opts);
[er, bad] = nntest(nn, test_x, test_y);
accuracy=1-er;
result = result + accuracy;
fprintf(' The accuracy is  %.4f . \n' , accuracy)
end;
fprintf('The result is %.3f . \n',result/20)