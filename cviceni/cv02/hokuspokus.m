clear *
sigma1 = 1;
sigma2 = 2;

n = 1000;

a = 0:0.01:1;
for i=1:length(a)
    x1 = randn(1,n)*sqrt(sigma1);
    x2 = randn(1,n)*sqrt(sigma2);
    mu = a(i)*x1 + (1-a(i))*x2;
    meanmuexp(i) = mean(mu);
    meanmuteor(i) = 0;
    varmuexp(i) = mean(mu.^2);
    varmuteor(i) = a(i)^2*sigma1+(1-a(i))^2*sigma2;
end
a_opt = sigma2/(sigma1+sigma2);
muopt = 0;
varopt = a_opt^2*sigma1+(1-a_opt)^2*sigma2;

subplot(2,1,1)
plot(a,meanmuexp)
hold on
plot(a,meanmuteor)
plot(a_opt,muopt,'*')

subplot(2,1,2)
plot(a,varmuexp)
hold on
plot(a,varmuteor)
plot(a_opt,varopt,'*r')