#cvičení
# Cvičení 6
1. Uvažujte pro zadaná data model náhodné veličiny dle [[Lineární model|lineárního modelu]] $x_k = A + Bk + w_k$, $w_k \sim N(0, \sigma^2)$. Odhadněte $A$ a $B$. Pomocí [[Metoda Monte Carlo|Monte Carlo simulace]] odhadněte rozptyly odhadů a porovnejte s teoretickým rozptylem.
$$[A_{true} = 3, B_{true} = 1]$$
2. Stejnou úlohu řešte pro model $x_k = A + Bk + Ck^2+ w_k$, $w_k \sim N(0, \sigma^2)$. Odhadněte $A$, $B$, $C$.
$$[A_{true} = 3, B_{true} = 1, C_{true} = 0.1]$$
3. Stejnou úlohu řešte pro model  $x_k = A + Bk + Ck^2+ w_k$, kdy $w_k \sim N(0, 0.1k^2)$. Odhadněte $A$, $B$, $C$.
$$[A_{true} = 3, B_{true} = 1, C_{true} = 0.1]$$
4. Uvažujte odhad parametrů lineárního modelu:
$$
x[n] = \sum^M_{k=1} {a_k \cos \left(\frac{2\pi kn}{N} \right)} + \sum^M_{k=1} {b_k \sin \left(\frac{2\pi kn}{N} \right)} + w[n]
$$
   kde $n = 0,..,N-1$ a $w[n] \sim N(0,\sigma^2)$.
5. Odvoďte vzorec pro odhad parametrů základního lineárního modelu pomocí nejmenších čtverců
$$
\hat \theta = \min_{\theta} || x - H\theta ||^2
$$
