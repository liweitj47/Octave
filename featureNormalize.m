function X = featureNormalize( X )
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    mu = mean(X);
    sigma = std(X);
    for i = 1:size(X,2),
        X(:,i) = (X(:,i)-mu(i))/sigma(i);
    end;
end

