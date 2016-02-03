function [theta,cost_hist] = gd(X,y,theta,alpha,lambda,iteNum )
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
    theta = zeros(size(theta));
    cost_hist = zeros(iteNum,1);
    for i = 1:iteNum,
        [cost,grad] = costFunction(X,y,theta,lambda);
        cost_hist(i) = cost;
        theta = theta - alpha*grad;
    end;

end

