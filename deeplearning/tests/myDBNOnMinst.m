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
dbn.sizes = [100 100 100]; %此处设置深度信念网络的层数以及每层的节点个数
opts.numepochs =   1; %此处设置循环次数
opts.batchsize = 100; % 此处设置批大小
opts.momentum  =   0; %此处设置动量的大小
opts.alpha     =   0.1;%此处设置学习率
dbn = dbnsetup(dbn, train_x, opts); %此处设置dbn
dbn = dbntrain(dbn, train_x, opts); %此处训练dbn

%unfold dbn to nn
nn = dbnunfoldtonn(dbn, 10);% 此处的第二个参数定义了分类的数目
nn.activation_function = 'sigm'; %此处定义了激活函数

%train nn
opts.numepochs =  1;%此处定义了循环次数
opts.batchsize = 10; %此处设置批大小
nn = nntrain(nn, train_x, train_y, opts);
[er, bad] = nntest(nn, test_x, test_y);
accuracy=1-er;
result = result + accuracy;
fprintf(' The temporal result is  %.4f . \n' , er)
end;
%assert(er > 0.10, 'Too big error');
end;
fprintf(' The last result is  %.4f . \n' , result/10)