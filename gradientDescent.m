clc
clear all
close all
tic
% Code - Linear Regression with One Variable with Gradient Descent.
% x1 = 1,2,3;
% y = 1,2,3;

X = [1 1;1 2;1 3];                                                              % feature
y = [1;2;3];                                                                    % feature
theta = [0 0];                                                                  % chosen parameters
alpha = 0.001;                                                                  % Learning rate
[m c] = size(X);
h_theta_x = X*theta';
error = h_theta_x - y;
J1 = (1/(2*m))*sum(error.^2);

i=1
 while i
  for j = 1:length(theta)
    delta(j) = (1/m).*sum(error .* X( :,j));
  endfor
  theta = theta - alpha .* delta
  h_theta_x = X*theta';
  error = h_theta_x - y;
  J2 = (1/(2*m))*sum(error.^2)
  % Graphical evaluation of the process.
  plot(i,J1,'*')
  hold on
  % Convergence check numerically.
  convergence_error = abs(J2-J1);
  if convergence_error < 1e-8
    disp('Convegence is reached.')
    break
  else
    J1=J2;
  endif
  i = i + 1
 endwhile
toc
