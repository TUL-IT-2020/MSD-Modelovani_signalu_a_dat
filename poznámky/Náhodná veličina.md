# Náhodná veličina
S každým pokusem nebo hrou je spojena množina všech možných výsledků. Označme symbolem $\Omega$ množinu všech možných, navzájem se vylučujících výsledků. Libovolný možný výsledek, označme $\omega \in \Omega$, nazveme elementární jev, $\Omega$ pak nazveme základní pravděpodobnostní prostor.

## Definice
Náhodná veličina X je zobrazení 𝑋 ∶ Ω → 𝑅 takové, že pro každé 𝑥 ∈ 𝑅 platí
$$
X^{-1} ((-\infty,x)) = \{\omega \in \Omega | X(\omega) \leq x\} = [X \leq x] \subset \Omega 
$$
Neboli: Náhodná veličina X je reálná funkce definovaná na množině všech elementárních jevů (=pokusů experimentu), která každému jevu přiřadí reálné číslo. Množina čísel přiřazených elementárním jevům tvoří obor hodnot náhodné veličiny.

## PŘÍKLAD: Hod 6 stěnnou kostkou 
- Pokus = hod kostkou, elementární jev $\omega \in \Omega$ = {1, 2, 3, 4, 5, 6}. 𝑋 je rovna hodnotě napsané na vrchní stěně kostky po dopadu. Obor náhodné veličiny je také {1, 2, 3, 4, 5, 6}.
- Pokus = hod 2 kostkami, pak $\omega \in \Omega = \{(𝑖,𝑗) |𝑖 = 1, … 6; 𝑗 = 1, … 6; 𝑖 \leq 𝑗 \}$. 𝑋 je rovna součtu padlých hodnot. Obor náhodné veličiny je {2, 3, … , 12} , jelikož např. 𝑋(1,1) = 2.

## Diskrétní náhodné veličiny
Veličina $X$ má diskrétní rozdělení, jestliže její obor hodnot $H$ má spočetně mnoho prvků, tj. $\sum_{𝑥_𝑘\in𝐻} 𝑃[𝑋 = 𝑥_𝑘] = 1$. Funkci $𝑃[𝑋 = 𝑥]$ nazveme pravděpodobnostní funkcí náhodné veličiny $X$.

## Absolutně spojité náhodné veličiny
### Definice: 
Náhodná veličina $X$ má absolutně spojité rozdělení (ASR), jestliže existuje nezáporná reálná funkce $𝑓_𝑋(𝑥)$ taková, že pro každé $𝑥 \in 𝑅$ platí $𝐹_𝑋(𝑥) = \int^x_{−\infty} {𝑓_𝑋(𝑡) 𝑑𝑡}$ . Funkci $𝑓_𝑋(𝑥)$ nazýváme **hustotou pravděpodobnosti** náhodné veličiny $X$.

### ZÁKLADNÍ VLASTNOSTI: 
Pro X mající ASR platí:
$$
𝑓_𝑋(𝑥) = \frac{𝑑𝐹}{𝑑𝑥}(𝑥) 
$$$$
𝑃 [𝑋 \in 𝐴] = \int_𝐴 𝑓_𝑋(𝑥) 𝑑𝑥 
$$$$
𝑃 [𝑋 = 𝑎] = 0
$$
### KAŽDÁ HUSTOTA PRAVDĚPODOBNOSTI DÁLE SPLŇUJE:
$$
𝑓_𝑋(𝑥) ≥ 0
$$
$$
\int^\infty_{−\infty} 𝑓_𝑋(𝑥) 𝑑𝑥 = 1
$$