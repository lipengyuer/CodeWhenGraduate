indices = crossvalind('Kfold',group,10);
result = 0;
for i = 1:10
%create the train data and test data
test = (indices == i); train = ~test;
for j=1:1
   indexForFeature = crossvalind('Kfold',feature,1);
   featureIndex = (indexForFeature==j);
   train_x = double(instance(train,featureIndex))/255;
   train_y = double(labelForDBN(train,:));
   test_x = double(instance(test,featureIndex))/255;
   test_y = double(labelForDBN(test,:));


rand('state',0)
%train dbn
dbn.sizes = [100 100 100]; %�˴����������������Ĳ����Լ�ÿ��Ľڵ����
opts.numepochs =   1; %�˴�����ѭ������
opts.batchsize = 100; % �˴���������С
opts.momentum  =   0; %�˴����ö����Ĵ�С
opts.alpha     =   0.1;%�˴�����ѧϰ��
dbn = dbnsetup(dbn, train_x, opts); %�˴�����dbn
dbn = dbntrain(dbn, train_x, opts); %�˴�ѵ��dbn

%unfold dbn to nn
nn = dbnunfoldtonn(dbn, 10);% �˴��ĵڶ������������˷������Ŀ
nn.activation_function = 'sigm'; %�˴������˼����

%train nn
opts.numepochs =  1;%�˴�������ѭ������
opts.batchsize = 10; %�˴���������С
nn = nntrain(nn, train_x, train_y, opts);
[er, bad] = nntest(nn, test_x, test_y);
accuracy=1-er;
result = result + accuracy;
fprintf(' The temporal result is  %.4f . \n' , er)
end;
%assert(er > 0.10, 'Too big error');
end;
fprintf(' The last result is  %.4f . \n' , result/10)