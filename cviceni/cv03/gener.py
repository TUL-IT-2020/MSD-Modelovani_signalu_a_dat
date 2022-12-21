import numpy as np
import matplotlib.pyplot as plt

N = 1000
y = np.random.rand(N)
values = np.tan(np.pi*y-1/2*np.pi)

plt.plot(values)
plt.show()