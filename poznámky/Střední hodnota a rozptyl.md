# Střední hodnota a rozptyl
## DISKRÉTNÍ NÁHODNÁ VELIČINA
### STŘEDNÍ HODNOTA
$$
E[X] = \sum_i{P[X=x_i]}
$$
### ROZPTYL
$$
V[X] = \sum_i{\left( x_i - E[X] \right)^2 P[X=x_i]}
$$

## ABSOLUTNĚ SPOJITÁ NÁHODNÁ VELIČINA
### STŘEDNÍ HODNOTA
$$
E[X] = \int^\infty_{-\infty} {x \; p(x) \; dx}
$$
### ROZPTYL
$$
V[X] = \int^\infty_{-\infty} {\left( x - E[X] \right)^2 \; p(x) \; dx}
$$

Pro střední hodnoty diskrétních i ASR náhodných veličin X,Y a libovolné konstanty $𝑎, 𝑐 ∈ 𝑅$ platí: 
$$
𝐸[𝑎 + 𝑋 + 𝑐𝑌] = 𝑎 + 𝐸[𝑋] + 𝑐𝐸[𝑌]
$$