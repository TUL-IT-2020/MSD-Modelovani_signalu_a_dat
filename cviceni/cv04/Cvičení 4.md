#cvičení
# Cvičení 4
1. Ukažte vztah: 
$$
ℐ(\theta) = -E \left[ \frac{\partial^2 \ln p(\theta|x)}{\partial\theta^2} \right] = E \left[ \left(\frac{\partial}{\partial\theta} \ln p(\theta|x) \right)^2 \right]
$$
2. Chceme odhadnout úroveň stejnosměrného proudu z nepřesných měření $𝑋_1, 𝑋_2, … , 𝑋_𝑛$ , tzn. při modelu $𝑋_𝑖 = 𝐴 + 𝑤_𝑖$ , $𝑤_𝑖\sim 𝑁(0,1)$ . Spočítejte [[Rao-Cramérova dolní mez|CRLB]] odhadu parametru 𝐴. Který z odhadů je lepší? 
	-  $\hat A = \frac{1}{n} \sum^{n}_{i=1} X_i$ 
	- $\hat A = \frac{1}{n+2} \left(2X_1 + \sum^{n-1}_{i=2}{X_i} + 2X_n \right)$
4. Stejný příklad jako 2 pokud $𝑤_𝑖\sim N(0, \sigma^2)$ , $\sigma^2$ známe. 
5. $X_i = Ar^i + w_i$, kde 𝑟 > 0 (známé) a $𝑤_𝑖\sim 𝑁(0, \sigma^2)$ , $\sigma^2$ známe. Spočtěte CRLB a analyzujte pro různé hodnoty $𝑟$. 