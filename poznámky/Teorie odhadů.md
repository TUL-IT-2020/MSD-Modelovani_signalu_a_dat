# Teorie odhadů
## Definice: 
𝑶𝒅𝒉𝒂𝒅𝒆𝒎 𝑛𝑒𝑧𝑛á𝑚éℎ𝑜 𝑝𝑎𝑟𝑎𝑚𝑒𝑡𝑟𝑢 $\theta$ 𝑛𝑎𝑧𝑣𝑒𝑚𝑒 𝑙𝑖𝑏𝑜𝑣𝑜𝑙𝑛𝑜𝑢 𝑓𝑢𝑛𝑘𝑐𝑖 $\theta = 𝑔(𝑋_1, 𝑋_2, … , 𝑋_𝑛)$ , která nezávisí na skutečné hodnotě $\theta$. 

### Poznámka: 
Odhad parametru může záviset i na jiných parametrech, pokud jsou známé. 

### Příklady odhadů:
Uvažujme náhodný výběr $𝑋_1, 𝑋_2, … , 𝑋_𝑛$, který vznikl měřením zašuměného stejnosměrného proudu. Matematicky lze model popsat jako $𝑋_𝑖 = 𝐴 + 𝑤_𝑖$ , kde $A$ je konstantní a $w_i\sim N(0,1)$ , tzv. bílý šum. Úkolem je odhadnout hodnotu $A$.
- Varianta 1: $\hat A = \frac{1}{n} \sum^{n}_{i=1} X_i$
- Varianta 2: $\hat A = X_1$
Jaký odhad je lepší?

## Kvalita odhadu