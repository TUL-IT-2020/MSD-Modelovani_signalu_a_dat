clc;
close all;
clear all;

% 3.
% Normal distribution(1,1)
G = 1;
u = 1;

% Generate 1000 random numbers from normal distribution
x = -5:0.01:5;
y = 1/sqrt(2*pi*G*G) * exp(-(x-u).*(x-u)/2*G*G);
plot(x,y);

% Generate 1000 random numbers from normal distribution
n = 1000;
z = normrnd(u,G,[1,n]);
plot(z)
histogram(z)

% Generate 1000 random numbers from uniform distribution
z = rand([1,n])*3;
histogram(z);

% 4.
% Babička posílá SMSky
% Poasson distribution approx. binomial distribution
l = 5;
poisspdf(6,l)
poisspdf(5,l)

n = 365;
p = l/n;
x = 6;
binopdf(x,n,p)