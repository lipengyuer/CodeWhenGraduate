%这个函数的作用是对autoencoder进行训练
function sae = saetrain(sae, x, opts)
    for i = 1 : numel(sae.ae);
        disp(['Training AE ' num2str(i) '/' num2str(numel(sae.ae))]);  %打印输出训练的阶段
        sae.ae{i} = nntrain(sae.ae{i}, x, x, opts); %进行ae的逐层训练
        t = nnff(sae.ae{i}, x, x); %进行ae的前向传播
        x = t.a{2}; % x存储新的结果
        %remove bias term
        x = x(:,2:end); %将偏置项移除
    end
end
