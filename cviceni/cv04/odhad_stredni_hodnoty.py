import numpy as np
import matplotlib.pyplot as plt


# Odhad stední hodnoty rovnoměrného rozdělení
n = 1000
x = np.random.rand(1,n).T
i = np.arange(n)

plt.plot(i, x)
plt.show()
print(2*np.mean(x))
print(2*np.median(x))
print(np.max(x))