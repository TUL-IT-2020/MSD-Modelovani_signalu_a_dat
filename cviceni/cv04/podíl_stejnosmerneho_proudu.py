import numpy as np
import matplotlib.pyplot as plt

def gaus(u, G2, n):
    return np.sqrt(G2) * np.random.randn(n,1) + u

def get_best_alfa(G21, G22):
    return G22/(G21+G22)

u = 0
n = 1000
G21 = 1
G22 = 2
x1 = gaus(u, G21, n)
x2 = gaus(u, G22, n)

# alfa e [0,1]
alfas = np.arange(0,1,0.01)
varexp =  []
varteor = []
for alfa in alfas:
    u = alfa*x1 + (1-alfa)*x2
    varexp.append(np.var(u))
    v = alfa*alfa*G21 + (1-alfa)*(1-alfa)*G22
    varteor.append(v)

varexp = np.array(varexp)

index = np.argmin(varexp)
best_alfa = alfas[index]
print(best_alfa)
print(get_best_alfa(G21, G22))

plt.plot(alfas, varexp)
plt.show()