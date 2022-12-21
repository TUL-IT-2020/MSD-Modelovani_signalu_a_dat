import numpy as np
import matplotlib.pyplot as plt

# Centrální limitní věta
# když toho sečteme dost tak to povede na Gausovku.
M = 10000
N = 100
x = np.arange(M)
array = np.zeros(M)
for i in range(M):
    array[i] = np.sum(np.random.rand(N))

u = 1/2
G = 1/12
array = (array - N*u)/np.sqrt(N)/np.sqrt(G)

plt.hist(array, bins=50)
plt.show()
