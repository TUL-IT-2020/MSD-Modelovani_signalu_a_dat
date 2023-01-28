clear *
L = 5;
N = 100;
C = randn(L+1); C = C*C'; 
D = diag(1./sqrt(diag(C)));
C = D*C*D;
rho = 0.7; % ridime korelaci mezi x1 a x2
C = [C(1:L,1:L) rho*C(1:L,L+1);...
    rho*C(L+1,1:L) 1];

x = sqrtm(C)*randn(L+1,N);
% x ma Gaussovo rozlozeni s kov. matici C
Cest = x*x'/N;

x2est = C(L+1,1:L)*inv(C(1:L,1:L))*x(1:L,:);
x2estest = Cest(L+1,1:L)*inv(Cest(1:L,1:L))*x(1:L,:);
x2true = x(L+1,:);

wWiener = C(L+1,1:L)*inv(C(1:L,1:L));
wLS = Cest(L+1,1:L)*inv(Cest(1:L,1:L));

BMSE = mean((x2est-x2true).^2)
LSE = mean((x2estest-x2true).^2)
BMSE_theory = C(L+1,L+1) - C(L+1,1:L)*inv(C(1:L,1:L))*C(1:L,L+1)

xnew = sqrtm(C)*randn(L+1,N);
x2truenew = xnew(L+1,:);

x2estnew = wWiener*xnew(1:L,:);
x2estestnew = wLS*xnew(1:L,:);

BMSEnew = mean((x2estnew-x2truenew).^2)
LSEnew = mean((x2estestnew-x2truenew).^2)


