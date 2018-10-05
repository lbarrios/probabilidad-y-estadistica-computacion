Probabilidad
============

Definición intuitiva
--------------------
Si un experimento es realizado n veces, 
y el evento `X` ocurre `nₓ` veces, entonces
la frecuencia de ocurrencia de `X` es cercana 
a su probabilidad `P(X)`.
```
    P(X) ≃ nₓ / n
```

Definición Axiomática (modelo teórico)
--------------------------------------

* Se cuenta con un **espacio de probabilidades** (o **espacio muestral**), esto es, un conjunto S de elementos
llamados **resultados** (outcomes).

* Dado un espacio muestral `S`, un **evento** es un subconjunto `X⊆S`.

	* Un **evento simple** es aquel que contiene un solo resultado. Un **evento compuesto** es aquel que contiene más de un resultado.

### Operaciones sobre eventos

* El **complemento** de un evento `X⊆S`, denotado `X'⊆S` es el subconjunto que contiene a todos los elementos de `S` tal que no están en `X`.

* La **intersección** de dos eventos `X,Y⊆S` es el subconjunto de todos los elementos de `S` tal que están en `X` y en `Y`.
	* Dos eventos `A,B⊆S` son **disjuntos** o **mutuamente excluyentes** si no tienen elementos en común, es decir, `A∩B=∅`

* La **unión** de dos eventos `X,Y⊆S` es el subconjunto de todos los elementos de `S`tal que están en `X`o están en `Y`.

### Axiomas de Probabilidad

Sea `S` un espacio muestral, definimos `P` una **función de probabilidad** tal que `P: S → ℝ` tal que:
* `∀X⊆S, 0≤P(X)≤1`
* `P(S)=1`
* `P(∅)=0`
* Sean `A₁,A₂,A₃,...,An⊆S` eventos disjuntos, 
`P(A₁ ∪ A₂ ∪ A₃ ∪ ... ∪ An) = P(A₁) + P(A₂) + P(A₃) + ... + P(An)`

#### Propiedades

* `∀A⊆S, P(A) + P(A') = 1`
	* De esto se desprende que `P(A') = 1 - P(A)`

* `∀A,B⊆S, P(A∪B) = P(A) + P(B) - P(A∩B)`

### Conteo

* Dado un espacio muestral `S` compuesto por pares ordenados de resultados con la forma `(x,y)`, y en donde existen `n` formas de elegir a `x` y `m` formas de elegir a `y`, entonces hay `n * m` pares posibles en `S`.
	* De forma más general, si `S` está compuesto por tuplas `(x₁, x₂, ..., xₙ)`, en donde cada `xᵢ` tiene `nᵢ` posibles elecciones, hay `x₁ * x₂ * ... * xₙ` posibles tuplas en `S`.

* Una **permutación** es un subconjunto ordenado.
	* Dado `S` de `n` objetos, el número de permutaciones posibles de cualquier tamaño posible es `n! = 1 * 2 * ... * (n-1) * n`.
	* Dado `S` de `n` objetos, el número de permutaciones posibles de tamaño `k` es `n!/(n-k)! = (n-k+1) * (n-k+2) * ... * (n-1) * n`.

* Una **combinación** es un subconjunto no-ordenado.
