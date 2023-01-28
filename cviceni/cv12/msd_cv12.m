close all, clear, clc

s_init = randn;
a = 0.5;
N = 100;
sigma_u = 2;
s = zeros(N,1);
u = sqrt(sigma_u)*randn(N,1);
for i = 2:N
    s(i) = a*s(i-1)+u(i);
end

mocnina = [1:N]';
w = sqrt((1/2).^mocnina).*randn(N,1);
x = s+w;
%plot(x)

s_pred = zeros(N,1);
k_gain = zeros(N,1);
mse = zeros(N,1);
mse_pred = zeros(N,1);
mse(1) = 9/13;
s_est = zeros(N,1);
s_est(1) = 9/13*x(1);

for i = 2 : 100
    s_pred(i) = a * s_est(i-1); %predic
    mse_pred(i) = a^2 * mse(i-1) + sigma_u; %min pred mse
    
    sigma_n = (1/2)^(i-1);
    k_gain(i) = mse_pred(i) / (sigma_n + mse_pred(i)); %k gain
    
    s_est(i) = s_pred(i) + k_gain(i) * (x(i) - s_pred(i)); % correction
    mse(i) = (1 - k_gain(i)) * mse_pred(i); %mse
end

plot(s_est)
hold on
plot(s)
hold on
plot(x)
