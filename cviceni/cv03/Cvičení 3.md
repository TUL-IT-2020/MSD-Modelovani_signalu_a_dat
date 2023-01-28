#cvičení
# Cvičení 3
1. Generujte pozorování z [[Cauchyho rozdělení|Cauchyho rozdělení]] a pokuste se odhadnout [[Střední hodnota a rozptyl#Střední hodnota (Expected value)|střední hodnotu]]. 
2. Je odhad $\hat \sigma^2 = \frac{1} {n} \sum^{n}_{i=1} (X_i - \mu)^2$ nestranný, pokud $X_i\sim N(𝜇, 𝜎^2)$ , kde: 
	1. $\mu = 0$, 
	2. 𝜇 je známé, ale nenulové, 
	3. 𝜇 je neznámé a nahradíme výběrovým průměrem. 
3. Chceme-li odhadnout podíl stejnosměrného proudu a bílého šumu z naměřených pozorování $X_1, X_2, … , X_n$ , tzn. při modelu $X_i = A + w_i$ , $w_i\sim N(0,1)$ , který z odhadů je lepší: 
	- $\hat A = \frac{1}{n} \sum^{n}_{i=1} X_i$ a nebo 
	- $\hat A = \frac{1}{n+2} \left(2X_1 + \sum^{n-1}_{i=2}{X_i} + 2X_n \right)$?
4. Mějme náhodnou veličinu $𝑋 = 𝐹_𝑋^{-1}(𝑈)$ , kde $𝑈\sim (0,1)$ a $𝐹_𝑋$ je distribuční funkce náhodné veličiny $𝑋$. Ukažte pomocí věty o [[Transformace hustot pravděpodobnosti|transformaci hustot]], že $𝑓_𝑋(𝑥)$ je skutečně hustota pravděpodobnosti $X$.