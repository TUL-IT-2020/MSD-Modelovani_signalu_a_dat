clear all
clc


format long
N = 30;
trials = 1000;
for trial = 1:trials
    x = gengau2(4,1,N);
    theta0(trial) = mean(x);
    theta(trial) = theta0(trial);

    range = 10;
    for i = 1:range
        g_theta = 4*sum((x-theta(trial)).^3);
        g_theta_delt = -12* sum((x-theta(trial)).^2);
        theta(trial) = theta(trial) - g_theta / g_theta_delt;
    end
end
disp([mean(theta.^2) mean(theta0.^2)])
