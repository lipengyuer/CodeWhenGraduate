result = 0;
index = randperm(7500);
indices = rem(index,10);

%生成标签数据
zero = zeros(2500,1);
one = ones(2500,1);
label = [zero one;one zero];

for i=0:9

test = (indices == i); train = ~test;

train_x = instance(train,:);
train_y = label(train,:);
test_x = instance(test,:);
test_y = label(test,:);

%  ex1 train a 100 hidden unit SDAE and use it to initialize a FFNN
%  Setup and train a stacked denoising autoencoder (SDAE)
rand('state',0)
sae = saesetup([2 100]);  
sae.ae{1}.activation_function       = 'sigm';
sae.ae{1}.learningRate              = 1;
sae.ae{1}.inputZeroMaskedFraction   = 0.5;
opts.numepochs =   100;
opts.batchsize = 100;
sae = saetrain(sae, train_x, opts);
%visualize(sae.ae{1}.W{1}(:,2:end)')

% Use the SDAE to initialize a FFNN
nn = nnsetup([2 100 100 2]);
nn.activation_function              = 'sigm';
nn.learningRate                     = 1;
nn.W{1} = sae.ae{1}.W{1};

% Train the FFNN
opts.numepochs =   10;
opts.batchsize = 100;
nn = nntrain(nn, train_x, train_y, opts);
[er, bad] = nntest(nn, test_x, test_y);
%assert(er < 0.16, 'Too big error');
accuracy=1-er;
result = result + accuracy;
fprintf(' The temporal result is  %.4f . \n' , accuracy)
end;
fprintf(' The last result is  %.4f . \n' , result/10);