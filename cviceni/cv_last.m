clear *
L = 5; % dimenze
N = 10000;
%% Vytvoření C
C1 = randn(L);
C1 = C1*C1';
D = diag(1./sqrt(diag(C1))); 
C = D * C1 * D;
 %% Vytvořeí Ro
 rho = 0.5;
 sigma22 = 1;
 C = [C(1:L,1:L) rho*C(1:L,L+1); rho*C(L+1,1:L) sigma22];

 %guassovo rozložení s kov.maticí C
 x = sqrtm(C)*randn(L+1,N)

 x2est = C(L+1,1:L)*inv(C(1:L,1:L)) * X(1:L,:);
 X2true = x(L+1,:);

 BMSE = mean((x2est-X2true).^2);
 BMSE_theory = C(L+1,L+1) - C()