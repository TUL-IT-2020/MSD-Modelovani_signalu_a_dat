clear *
clc

N = 3;
Ntrial = 100000;

data = randn(Ntrial,N); % skutecne mu=0 sigma2=1

mu_est = mean(data,2); % odhady mu

sigma2 = mean((data-mu_est).^2,2); %pokud mu nezname
sigma2_mu_zname = mean(data.^2,2);

fprintf('skutecne sigma2: 1\n')

fprintf('sigma2 kdyz mu=0 zname: %f\n', mean(sigma2_mu_zname))

fprintf('sigma2 kdyz mu nezname: %f\n',mean(sigma2))

fprintf('teoreticka stredni hodnota sigma2 kdyz mu nezname: %f\n',(N-1)/N)

