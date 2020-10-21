%这个函数的作用是对SAE进行初始化
function sae = saesetup(size)
    for u = 2 : numel(size)
        sae.ae{u-1} = nnsetup([size(u-1) size(u) size(u-1)]);  % 返回了一些设置好的参数矩阵，而这个矩阵的大小是由传入的节点决定的
    end
end
