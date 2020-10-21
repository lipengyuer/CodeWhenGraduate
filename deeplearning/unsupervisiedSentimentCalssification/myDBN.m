%数据中不能有“nan”，否则结果令人惊诧；预训练周期数与反向传播周期数需要适当，太小效果不好、无法充分训练

result = 0;
index = randperm(5000);
indices = rem(index,10);

%生成标签数据
zero = zeros(2500,1);
one = ones(2500,1);
label = [zero one;one zero];
%indices = crossvalind('Kfold',indexFile,10);
for i = 0:9
%create the train data and test data
%test = (indices == i); train = ~test;
   %为数据切分成训练集和测试集做准备
   test = (indices == i); train = ~test;
   %DBN要求输入的向量中的每一个值的大小均在[0,1]之间，所以，下面的两行代码的作用是数据的预处理或者叫映射

   train_x = instance(train,:);
   train_y = label(train,:);
   test_x = instance(test,:);
   test_y = label(test,:);


rand('state',0); %#ok<*RAND>
%train dbn
dbn.sizes = [50 50 90]; %此处设置深度信念网络的层数以及每层的节点个数，原来的设置为[50 50 90]
opts.numepochs =   250; %此处设置循环次数
opts.batchsize = 100; % 此处设置批大小，原来为10
opts.momentum  =   0; %此处设置动量的大小
opts.alpha     =   0.01;%此处设置学习率 原来的设置是0.01
dbn = dbnsetup(dbn, train_x, opts); %此处设置dbn
dbn = dbntrain(dbn, train_x, opts); %此处训练dbn

%unfold dbn to nn
nn = dbnunfoldtonn(dbn, 2);% 此处的第二个参数定义了分类的数目
nn.activation_function = 'sigm'; %此处定义了激活函数

%train nn
opts.numepochs =  250;%此处定义了循环次数 原来的设置是250
opts.batchsize = 250; %此处设置批大小，原来为10
nn = nntrain(nn, train_x, train_y, opts);
[er, bad] = nntest(nn, test_x, test_y);
accuracy=1-er;
result = result + accuracy;
fprintf(' The temporal result is  %.4f . \n' , accuracy)
%assert(er > 0.10, 'Too big error');
end;
fprintf(' The last result is  %.4f . \n' , result/10);
