# By Pytel
"""
BLUE - best linear unbiased estimator
x = H * theta + w
theta = (H^T * H)^-1 * H^T * x
"""
import numpy as np
import matplotlib.pyplot as plt

# functions:
def linear(n, k, q):
    """ Linear data generator
    args:
        n - number of data
        k - slope
        q - offset
    return: 
        x - x axis
        y = kx + q
    """
    x = np.arange(n)
    y = k*x + q
    return x, y

def add_noise(x, noise=0.1):
    """ Add noise to data
    args:
        x - data
        noise - noise level
    return: 
        x - data with noise
    """
    x = x + np.random.normal(0, noise, len(x))
    return x

def linear_estimation(H, x):
    """ Linear data estimator
    theta = (H^T * H)^-1 * H^T * x
    args:
        H - matrix of coefficients
        x - data
    return: 
        theta - estimated parameters
    """
    theta = np.linalg.inv(H.T.dot(H)).dot(H.T).dot(x)
    return theta

# defined koeficients:
n = 1000
A = 5
B = 2

if __name__ == '__main__':
    # generate data
    x, y = linear(n, B, A)

    # print data
    #print("data:")
    #print(y)
    
    # plot data
    plt.plot(x, y, 'ro')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Linear data')
    #plt.axis([0, max(x), 0, max(y)])
    #plt.show()

    # BLUE - best linear unbiased estimator
    # x = H * theta + w
    A_koef = np.ones((n,1))
    B_koef = np.arange(n).reshape(n,1)

    H = np.concatenate((A_koef, B_koef), axis=1)
    #print(H)

    #theta = [A, B]^T
    theta = linear_estimation(H, y)
    theta_noise = linear_estimation(H, add_noise(y, 0.1))

    print("theta:")
    print(" - clear:", theta)
    print(" - with noise:", theta_noise)