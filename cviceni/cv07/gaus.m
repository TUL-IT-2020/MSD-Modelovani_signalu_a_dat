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