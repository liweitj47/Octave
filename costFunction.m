function [J,grad] = costFunction(X,y,theta,lambda)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
    m = length(y);
    J = 0;
    grad = zeros(size(theta));
    J = (sum((X*theta-y).^2)+lambda*sum(theta.^2))/(2*m);
    theta_one = zeros(size(theta));
    theta_one(1) = theta(1);
    grad = (X'*(X*theta-y)+lambda*(theta-theta_one))/m;
end

