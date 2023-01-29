clc;
close all;
clear all;

x = load('EKG_linear_izo.mat').x1;
N = length(x);

A = [-1 -(N+1)/2; -(N+1)/2 -((2*N+1)*(N+1))/6];
b = [(-1/N)*sum(x); (-1/N)*sum(x.*(1:N))];
theta_est = A\b;

plot(x)
hold on
plot(theta_est(1)+theta_est(2)*(1:N))
hold off