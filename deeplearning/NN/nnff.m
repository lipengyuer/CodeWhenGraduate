function nn = nnff(nn, x, y)
%NNFF performs a feedforward pass�����ע��ͦ�޵ģ�
% nn = nnff(nn, x, y) returns an neural network structure with updated
% layer activations, error and loss (nn.a, nn.e and nn.L)

    n = nn.n;  %n�д洢���ǲ�ĸ���
    m = size(x, 1); %m�д洢����ѵ�����ĸ���
    
    x = [ones(m,1) x];  % x ������1���µľ���
    nn.a{1} = x; %����洢��ǰ�򴫲��Ĺ����е��м���

    %feedforward pass
    for i = 2 : n-1
        switch nn.activation_function 
            case 'sigm'
                % Calculate the unit's outputs (including the bias term)
                nn.a{i} = sigm(nn.a{i - 1} * nn.W{i - 1}');
            case 'tanh_opt'
                nn.a{i} = tanh_opt(nn.a{i - 1} * nn.W{i - 1}');
        end
        
        %dropout  �ж��Ƿ����dropout
        if(nn.dropoutFraction > 0)
            if(nn.testing)   %���nn.testingΪ�棬��ô�������е�ֵ�����ض������½�
                nn.a{i} = nn.a{i}.*(1 - nn.dropoutFraction);
            else  %���nn.testing��Ϊ�棬
                nn.dropOutMask{i} = (rand(size(nn.a{i}))>nn.dropoutFraction);  %�����������һ����������
                nn.a{i} = nn.a{i}.*nn.dropOutMask{i}; %����������ǽ��ܶ�ط�ֱ�ӱ�Ϊ0��������λ�ñ��ֲ���
            end
        end
        
        %calculate running exponential activations for use with sparsity
        % nn.p{i}�ĳ�ֵ����һ����������ȫ��0,���ԣ�nn.p{1}�ڱ������Ǳ�ϡ�軯�˵�ֵ
        if(nn.nonSparsityPenalty>0)
            nn.p{i} = 0.99 * nn.p{i} + 0.01 * mean(nn.a{i}, 1);
        end
        
        %Add the bias term
        nn.a{i} = [ones(m,1) nn.a{i}];
    end
    switch nn.output 
        case 'sigm'
            nn.a{n} = sigm(nn.a{n - 1} * nn.W{n - 1}');
        case 'linear'
            nn.a{n} = nn.a{n - 1} * nn.W{n - 1}';
        case 'softmax'
            nn.a{n} = nn.a{n - 1} * nn.W{n - 1}';
            nn.a{n} = exp(bsxfun(@minus, nn.a{n}, max(nn.a{n},[],2)));
            nn.a{n} = bsxfun(@rdivide, nn.a{n}, sum(nn.a{n}, 2)); 
    end

    %error and loss
    nn.e = y - nn.a{n};
    
    switch nn.output
        case {'sigm', 'linear'}
            nn.L = 1/2 * sum(sum(nn.e .^ 2)) / m; 
        case 'softmax'
            nn.L = -sum(sum(y .* log(nn.a{n}))) / m;
    end
end
