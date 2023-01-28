# By Pytel

import numpy as np

def mean(x):
    return np.sum(x)/len(x)

def variance(x):
    return np.mean((x-np.mean(x))**2)

M = 1000
n = 100
sigma = 2

ssigma = []
for trial in np.arange(M):
    # vytvorime n nahodnych cisel z Gausovky
    # s rozptylem sigma a stredem 1
    x = np.random.normal(1, sigma, n)
    ssigma.append(variance(x))

print("Očekávaný rozptyl: ", sigma**2)
print("Průměr rozptylů: ", mean(ssigma))
