function [theta,cost_hist] = gd(X,y,theta,alpha,lambda,iteNum )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    theta = zeros(size(theta));
    cost_hist = zeros(iteNum,1);
    for i = 1:iteNum,
        [cost,grad] = costFunction(X,y,theta,lambda);
        cost_hist(i) = cost;
        theta = theta - alpha*grad;
    end;

end

