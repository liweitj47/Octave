function X = featureNormalize( X )
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
    mu = mean(X);
    sigma = std(X);
    for i = 1:size(X,2),
        X(:,i) = (X(:,i)-mu(i))/sigma(i);
    end;
end

