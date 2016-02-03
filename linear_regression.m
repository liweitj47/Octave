data = load('ex1data2.txt');
X = data(:,1:end-1);
y = data(:,end);
X = featureNormalize(X);
[m,n] = size(X);
X = [ones(m,1) X];
theta = randn(n+1,1);
%theta = zeros(n+1,1);
alpha = 0.03;
lambda = 0;
iteNum = 400;
[theta,cost_hist] = gd(X,y,theta,alpha,lambda,iteNum);
clf;
plot(1:iteNum,cost_hist);
xlabel('iterations');
ylabel('cost');
costFunction(X,y,theta,lambda)
%options = optimset('GradObj', 'on', 'MaxIter', 400);
%[theta, cost] = ...
%	fminunc(@(t)(costFunction(X, y,t)), theta, options);
fprintf('[%f]\n',theta);
