%��������������Ƕ�autoencoder����ѵ��
function sae = saetrain(sae, x, opts)
    for i = 1 : numel(sae.ae);
        disp(['Training AE ' num2str(i) '/' num2str(numel(sae.ae))]);  %��ӡ���ѵ���Ľ׶�
        sae.ae{i} = nntrain(sae.ae{i}, x, x, opts); %����ae�����ѵ��
        t = nnff(sae.ae{i}, x, x); %����ae��ǰ�򴫲�
        x = t.a{2}; % x�洢�µĽ��
        %remove bias term
        x = x(:,2:end); %��ƫ�����Ƴ�
    end
end
