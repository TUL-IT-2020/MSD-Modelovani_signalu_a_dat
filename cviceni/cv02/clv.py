import numpy as np
import matplotlib.pyplot as plt

# Centrální limitní věta
# když toho sečteme dost tak to povede na Gausovku.
M = 10000
N = 100
x = np.arange(M)

# Vlasostit rozdělení
mu = 1/2    
G2 = 1/12   # sigma^2

# Výpočet průměru z N rovnoměrných rozdělení
mean_value = np.zeros(M)
for i in range(M):
    mean_value[i] = np.sum(np.random.rand(N)) - N*mu

# Vzorec ze skript: Centrální limitní věta
array = mean_value / (np.sqrt(N) * np.sqrt(G2))

# Vykreslení histogramu
plt.hist(array, bins=50)
plt.show()

# Výsledek: Gausovka (0,1) 
print("Expected value: ", 0)
print("Variance: \t", 1)
print()
print("Mean value: \t", np.mean(array))
print("Variance: \t", np.var(array))