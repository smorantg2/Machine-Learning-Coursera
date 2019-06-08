function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
h = sigmoid(X*theta);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%sum1 = (y'*log(h)+(1-y')*log(1-h));
%sum2 = ((lambda/(2*m))*sum(theta(2:size(theta)).^2));
%Theta zero should not be regularized in Cost function either. 
%That's why ""theta(2:size(theta)""

%J = -((1/m)*y'*log(h)+(1-y')*log(1-h))+(lambda/(2*m))*sum(theta(2:size(theta)).^2);

J = -(1/m)*(y'*log(h)+(1-y')*log(1-h))+((lambda/(2*m))*sum(theta(2:size(theta)).^2));

%g1_1 = (1/m);
%g1_2 = (h-y);
%g1_3 = X'(1,:);

grad(1) = (1/m)*X'(1,:)*(h-y); %Gradient for Theta 0 not regularized

%g2_2 = X'(2:end,:);
%g2_3 = (lambda/m)*theta(2:end);


grad(2:end) = (1/m)*X'(2:end,:)*(h-y)+(lambda/m)*theta(2:end); 




% =============================================================

end
