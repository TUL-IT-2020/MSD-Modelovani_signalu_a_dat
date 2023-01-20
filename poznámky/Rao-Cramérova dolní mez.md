# Rao-Cramérova dolní mez (CRLB)
Předpokládejme, že hustota pravděpodobnosti $𝑝(\theta|𝒙)$ splňuje podmínku regularity. Potom rozptyl libovolného nestranného odhadu splňuje:
$$
var(\hat \theta) \geq \frac{1}{- E \left[ \frac{\partial^2\ln p(\theta|x)}{\partial\theta^2} \right]}
$$
kde derivaci vyčíslíme ve skutečné hodnotě parametru $\theta$.
Tuto mez nazýváme Rao-Cramérova dolní mez (Cramér-Rao Lower Bound = CRLB). 
Nestranný odhad, který dosahuje CRLB je **nejlepší nestranný odhad** (někdy také eficientní). 

Další vlastnosti CRLB:
- Pokud lze vyjádřit $\frac{\partial}{\partial\theta} \ln p(\theta|x) = I(\theta)(g(x) - \theta)$, kde $I(\theta)$ a $g(x)$ jsou libovolné funkce (ovšem závislé jenom na argumentu, který je zapsaný, popř. na hyperparametrech), pak $\hat \theta = g(x)$ je [[Teorie odhadů#Kvalita odhadu|nestranný odhad]] dosahující CRLB.
- Máme-li [[Statistická závislost a nezávislost#I.I.D. (independent identically distributed)|i.i.d. model]] dat a tedy $p(\theta|x) = \prod^N_{i=1} {p(\theta|x_i)}$, pak Fisherova informace celého pozorování $𝑥_1 … 𝑥_𝑁$ je rovna $N$-násobku Fisherovy informace jednoho (kteréhokoliv) pozorování. CRLB má potom nutně tvar násobku $\frac{1}{N}$.

## Fisherova informace (FI)
$$
J(\theta) = - E \left[ \frac{\partial^2\ln p(\theta|x)}{\partial\theta^2} \right]
$$
Pro FI platí:
$$
J(\theta) = - E \left[ \frac{\partial^2\ln p(\theta|x)}{\partial\theta^2} \right] = E \left[ \left( \frac{\partial}{\partial\theta} \ln p(\theta|x) \right)^2 \right]
$$



