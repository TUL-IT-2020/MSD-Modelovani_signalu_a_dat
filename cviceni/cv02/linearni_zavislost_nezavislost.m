clear *
sigma1 = 1;
sigma2 = 2;

x = randn(1,10000);
y = rand(1,10000);
mean(x.*y);

x = y.^2;
mean(x.*y)