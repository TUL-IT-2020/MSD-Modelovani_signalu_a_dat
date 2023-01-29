clear *
N = 1000;
D = 45;
globaldelay = 50;
L = 100; % delka LMS filtru

d = zeros(1,N); d(20:29) = randn(1,10);

x = [zeros(1,D) d(1:end-D)] + 0.1*randn(1,N);

ref = [zeros(1,globaldelay) d(1:end-globaldelay)]; %kvuli kauzalite

X = toeplitz(eye(L,1)*x(1),x);
R = X*X'/N;
p = X*ref'/N;
w = R\p; % optimalni filtr takovy, ze y=filter(w,1,x) se co 
         % nejvice podoba signalu ref
% mozno nahradit radky 13-16 pomoci
w2 = miso_firwiener(L-1,x',ref');
plot(w)