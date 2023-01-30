clear all
clc

load('EKG_linear_izo.mat')
plot(1:length(x1), x1)
hold on
format long
N = 900;
A = [1 (N+1)/2; (N+1)/2 (2*N+1)*(N+1)/6];
b = [mean(x1); mean((1:N).*x1)];
thetaest = A\b;
plot(thetaest(1)+thetaest(2)*(1:N))

plot(x1-thetaest(2)*(1:N),"r")