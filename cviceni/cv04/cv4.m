clc;
close all;
clear all;

% a = 1;
% n = 3;
% 
% for i = 1:100
%     x = randn(1,n);
%     sig(i) = (1/n) * sum(x.^2)
% 
% end
% mean(sig)
% histogram(sig)
% 
% 
% for i = 1:100
%     x = normrnd((x-mean(x)),1,[1,n]);
%     sig(i) = sum(x.^2) / (n-1)
% 
% end
% mean(sig)
% histogram(sig)



% 
% sig1 = 1;
% sig2 = 2;
% x1 = normrnd(0,sig1,[1,1000]);
% x2 = normrnd(0,sig2,[1,1000]);
% 
% alpha = sig2^2/(sig1^2 + sig2^2);
% 
% 
% odhad = alpha * x1 + (1-alpha)*x2;
% plot(odhad)
% var(odhad)
% k = 1;
% 
% for i=1:1000
%     for j=1:1000
%     sig1 = i;
%     sig2 = j;
%     alpha = sig2^2/(sig1^2 + sig2^2);
%     odhad = alpha * x1 + (1-alpha)*x2;
%     roz(k) = var(odhad);
%     k = k+1;
%     end
% end
% 
% plot(roz)

% N =10;
% M = 5;
% H = zeros(N,2*M);
% 
% for k =1:M
%     H(:,k) = cos(2*pi*k*(0:N-1)/N)';
%     H(:,M +k) = sin(2*pi*k*(0:N-1)/N)';
% end
% H
% 
% 
% H'*H
%% cv7

% N = 30;
% x = randn(1,N);
% theta0 = mean(x);
% theta = theta0;
% for i =1:10
%     g = 4*sum((x-theta).^3);
%     dg = -12*sum((x-theta).^2);
%     theta = theta - g/dg;
%     disp(theta)
% 
% end
% disp([theta theta0])


dat