clc;
close all;
clear all;

x = normrnd(1,1,[1,1000])
 
%plot(x,1/sqrt(2*pi*1)*exp(-1*((x-1).^2)/2*1))
% plot(x)
% histogram(x)

%x = unifrnd(1,1,[1,1000])
%histogram(x)

binopdf(6,365,5/365)

