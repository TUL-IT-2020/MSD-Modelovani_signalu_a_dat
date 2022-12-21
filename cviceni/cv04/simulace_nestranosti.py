import numpy as np
import matplotlib.pyplot as plt


# A)
# [u=0, G2 = 1]
# E[G2] = G2
n = 3
m = 1000
sigs = np.zeros(m)
for i in range(m):
    x = np.random.randn(n,1)
    # sigma
    sigs[i] = np.sum(x*x)/n

print(np.mean(sigs))

plt.hist(sigs)
plt.show()

# B)
# Neznáme stradní hodnotu
# E[G2] = (n-1)/n * G2
n = 3
m = 10000
sigs = np.zeros(m)
for i in range(m):
    x = np.random.randn(1,n)
    # sigma
    sigs[i] = np.sum(np.square(x-np.mean(x)))/(n-1)

print(np.mean(sigs))

plt.hist(sigs)
plt.show()