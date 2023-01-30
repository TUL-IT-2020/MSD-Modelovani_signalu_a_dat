clc;
close all;
clear all;

% Určete simulací přibližný rozptyl alfa

M = 1000;
n = 100;
alfa = rand(1)*10
for i = 1:M
    x = exprnd(1/alfa, [n,1]);
    alfa_MLE(i) = n/(sum(x));
end
mean(alfa_MLE)
var(alfa_MLE)