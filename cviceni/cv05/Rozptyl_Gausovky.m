clc;
close all;
clear all;

n = 2;
for i=1:10000
    x = randn(1, n);
    sigma(i) = mean((x-mean(x)).^2);
end
ssigma = mean(sigma);