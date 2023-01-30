clc;
close all;
clear all;

% cv01
exp(-5)*5^6/factorial(6)
%%

x = randn(1,1000000);
y = 1 + 2*x;
mean(y);

% histogram(mean(randn(1000))*sqrt(1000));
% x = sum(rand(5,1000));
% histogram(x)

% m = 100;
% x = sum(rand(m,1000));
% histogram((x-m/2)/sqrt(m)/sqrt(1/12));
