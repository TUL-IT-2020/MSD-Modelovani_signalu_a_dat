import numpy as np
import matplotlib.pyplot as plt

# Transforamce hustoty pravděpodobnosti
# z rovnoměrné na Cauchyho
# pomocí teorie jsme odvodili, že vzorec je:
# x = tan(pi*y - pi/2)
# kde y je z rovnoměrného rozdělení

N = 1000
y = np.random.rand(N)
values = np.tan(np.pi*y-1/2*np.pi)

plt.plot(values)
plt.show()