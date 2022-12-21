import numpy as np
# Metoda monte karlo pro výpočet integrálu

x = np.random.randn(100000,1)
y = np.mean(1/(1+x*x))*np.sqrt(2*np.pi)/np.exp(-(x*x)/2)
print(y)

# Mělo vyjít pi