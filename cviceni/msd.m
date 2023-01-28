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


%%

format long
clc
N = 30;
x = randn(1, N);


trials = 1000;
for trial=1:trials
    theta0(trial) = mean(x);
    theta(trial) = theta0(trial);
    for i=1:10
        g = 4*sum((x-theta(trial)).^3);
        dg = -12*sum((x-theta(trial)).^2);
        theta(trial) = theta(trial) - g/dg;
    end
end
disp([mean(theta.^2) mean(theta0.^2)])
