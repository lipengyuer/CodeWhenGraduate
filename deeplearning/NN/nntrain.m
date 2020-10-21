function [nn, L]  = nntrain(nn, train_x, train_y, opts, val_x, val_y)
%NNTRAIN trains a neural net
% [nn, L] = nnff(nn, x, y, opts) trains the neural network nn with input x and
% output y for opts.numepochs epochs, with minibatches of size
% opts.batchsize. Returns a neural network nn with updated activations,
% errors, weights and biases, (nn.a, nn.e, nn.W, nn.b) and L, the sum
% squared error for each training minibatch.

assert(isfloat(train_x), 'train_x must be a float');
assert(nargin == 4 || nargin == 6,'number ofinput arguments must be 4 or 6')

loss.train.e               = [];
loss.train.e_frac          = [];
loss.val.e                 = [];
loss.val.e_frac            = [];
opts.validation = 0;
if nargin == 6
    opts.validation = 1;
end

fhandle = [];
if isfield(opts,'plot') && opts.plot == 1
    fhandle = figure();
end

m = size(train_x, 1);  % m存储的是train_x的行数

batchsize = opts.batchsize;  % batchsize 存储的是批大小
numepochs = opts.numepochs;  % numepochs 存储的是次数

numbatches = m / batchsize; % 存储每次训练的数据的大小

assert(rem(numbatches, 1) == 0, 'numbatches must be a integer');   % rem()函数是进行求余的运算

L = zeros(numepochs*numbatches,1);   %就迭代过程来说：将训练集分为了很多小的部分，并且有很多轮迭代，L则很长，包含了这些过程中数据的存储
n = 1;
for i = 1 : numepochs
    tic;
    
    kk = randperm(m);   % kk中存储的是m个随机数，我猜想这么做是为了后期的随机切分训练集
    for l = 1 : numbatches
        batch_x = train_x(kk((l - 1) * batchsize + 1 : l * batchsize), :);  % 生成小批训练数据
        
        %Add noise to input (for use in denoising autoencoder)
        if(nn.inputZeroMaskedFraction ~= 0)
            batch_x = batch_x.*(rand(size(batch_x))>nn.inputZeroMaskedFraction);    %添加噪音的一个手段
        end
        
        batch_y = train_y(kk((l - 1) * batchsize + 1 : l * batchsize), :);  % 生成batch_y的数据
        
        nn = nnff(nn, batch_x, batch_y);  %进行前向传播
        nn = nnbp(nn); %反向传播
        nn = nnapplygrads(nn); % 权重更新
        
        L(n) = nn.L;  %代价的计算
        
        n = n + 1;
    end
    
    t = toc;

    if opts.validation == 1
        loss = nneval(nn, loss, train_x, train_y, val_x, val_y);
        str_perf = sprintf('; Full-batch train mse = %f, val mse = %f', loss.train.e(end), loss.val.e(end));
    else
        loss = nneval(nn, loss, train_x, train_y);
        str_perf = sprintf('; Full-batch train err = %f', loss.train.e(end));
    end
    if ishandle(fhandle)
        nnupdatefigures(nn, fhandle, loss, opts, i);
    end
        
    disp(['epoch ' num2str(i) '/' num2str(opts.numepochs) '. Took ' num2str(t) ' seconds' '. Mini-batch mean squared error on training set is ' num2str(mean(L((n-numbatches):(n-1)))) str_perf]);
    nn.learningRate = nn.learningRate * nn.scaling_learningRate;
end
end

