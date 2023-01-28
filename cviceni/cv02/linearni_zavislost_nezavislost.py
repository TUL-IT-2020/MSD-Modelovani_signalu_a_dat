import numpy as np

# nezávislé
N = 10000
X = np.random.randn(N)
Y = np.random.rand(N)
print(np.mean(X*Y))

# závislé
print()
N = 10000
X = np.random.rand(N)
Y = X**2
print(np.mean(X*Y))
print(np.mean(Y))   # 1/3