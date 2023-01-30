clc;
close all;
clear all;

% Urcete rozptyl z a overte simulaci

M = 1000;
n = 100;
mux = 0;
G2x = 1; 
muy = 0;
G2y = 5;
for i = 1:M
    x = mux+sqrt(G2x)*randn([n,1]);
    y = muy+sqrt(G2y)*randn([n,1]);

    %var(x)
    %var(y)

    z = 2*x + y;
    %plot(1:n, z)
    %histogram(z);

    var_calc(i) = var(z);
end

mean(var_calc)