clear all
clc

data = load('noisyvoice.mat')

theta = data.x;
L = 100
N = length(data.x)
x = toeplitz(data.noise(1)*eye(L,1), data.noise);

Cxx = 1/N * x * x';
Cthetax = 1/N * theta * x';

echo = Cthetax * inv(Cxx) * x;
soundsc(theta-echo, data.fs)