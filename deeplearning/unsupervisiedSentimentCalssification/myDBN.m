%�����в����С�nan�������������˾��Ԥѵ���������뷴�򴫲���������Ҫ�ʵ���̫СЧ�����á��޷����ѵ��

result = 0;
index = randperm(5000);
indices = rem(index,10);

%���ɱ�ǩ����
zero = zeros(2500,1);
one = ones(2500,1);
label = [zero one;one zero];
%indices = crossvalind('Kfold',indexFile,10);
for i = 0:9
%create the train data and test data
%test = (indices == i); train = ~test;
   %Ϊ�����зֳ�ѵ�����Ͳ��Լ���׼��
   test = (indices == i); train = ~test;
   %DBNҪ������������е�ÿһ��ֵ�Ĵ�С����[0,1]֮�䣬���ԣ���������д�������������ݵ�Ԥ������߽�ӳ��

   train_x = instance(train,:);
   train_y = label(train,:);
   test_x = instance(test,:);
   test_y = label(test,:);


rand('state',0); %#ok<*RAND>
%train dbn
dbn.sizes = [50 50 90]; %�˴����������������Ĳ����Լ�ÿ��Ľڵ������ԭ��������Ϊ[50 50 90]
opts.numepochs =   250; %�˴�����ѭ������
opts.batchsize = 100; % �˴���������С��ԭ��Ϊ10
opts.momentum  =   0; %�˴����ö����Ĵ�С
opts.alpha     =   0.01;%�˴�����ѧϰ�� ԭ����������0.01
dbn = dbnsetup(dbn, train_x, opts); %�˴�����dbn
dbn = dbntrain(dbn, train_x, opts); %�˴�ѵ��dbn

%unfold dbn to nn
nn = dbnunfoldtonn(dbn, 2);% �˴��ĵڶ������������˷������Ŀ
nn.activation_function = 'sigm'; %�˴������˼����

%train nn
opts.numepochs =  250;%�˴�������ѭ������ ԭ����������250
opts.batchsize = 250; %�˴���������С��ԭ��Ϊ10
nn = nntrain(nn, train_x, train_y, opts);
[er, bad] = nntest(nn, test_x, test_y);
accuracy=1-er;
result = result + accuracy;
fprintf(' The temporal result is  %.4f . \n' , accuracy)
%assert(er > 0.10, 'Too big error');
end;
fprintf(' The last result is  %.4f . \n' , result/10);
