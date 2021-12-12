f = @(x) x.^2;
y=[1:3];
f(y)



function [jVal, gradient] = costFunction(theta)
  jVal = (theta(1)-5)^2 + (theta(2)-2)^2;
  gradient = [2* (theta(1)-5); 2* (theta(2)-5)];
end


options = optimset('GradObj', 'on', 'MaxIter', 100);

initialTheta = zeros(2,1);

[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options)