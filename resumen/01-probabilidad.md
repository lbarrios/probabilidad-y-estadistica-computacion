Probabilidad
============

Definición intuitiva
--------------------

Si un experimento es realizado n veces,  y el evento `X` ocurre `nₓ` veces,
entonces la frecuencia de ocurrencia de `X` es cercana  a su probabilidad
`P(X)`.

```
    P(X) ≃ nₓ / n
```

Definición Axiomática (modelo teórico)
--------------------------------------

* Se cuenta con un **espacio de probabilidades** (o **espacio muestral**), esto
es, un conjunto S de elementos llamados **resultados** (outcomes).

* Dado un espacio muestral `S`, un **evento** es un subconjunto `X⊆S`.

	* Un **evento simple** es aquel que contiene un solo resultado. Un **evento compuesto** es aquel que contiene más de un resultado.

### Operaciones sobre eventos

* La **intersección** de dos eventos `X,Y⊆S`, denotada `X∩Y`, es el subconjunto de todos los elementos de `S` tal que están en `X` y en `Y`.
	* Dos eventos `A,B⊆S` son **disjuntos** o **mutuamente excluyentes** si no tienen elementos en común, es decir, `A∩B=∅`

* La **unión** de dos eventos `X,Y⊆S`, denotada `X∪Y`, es el subconjunto de todos los elementos de `S`tal que están en `X` o están en `Y`.

* El **complemento** de un evento `X⊆S`, denotado `Xᶜ⊆S` es el subconjunto que contiene a todos los elementos de `S` tal que no están en `X`.
    - `X∩Xᶜ=∅`
    - `X∪Xᶜ=S`

### Axiomas de Probabilidad

Sea `S` un espacio muestral, definimos `P` una **función de probabilidad** tal que `P: S → ℝ` tal que:
* `∀X⊆S, 0≤P(X)≤1`
* `P(S)=1`
* Sean `A₁,A₂,A₃,...,An⊆S` eventos disjuntos, 
`P(A₁ ∪ A₂ ∪ A₃ ∪ ... ∪ An) = P(A₁) + P(A₂) + P(A₃) + ... + P(An)`

#### Propiedades

* `P(∅)=0`
    
    **Demostración**: Para todo `A⊆S`, los eventos `A` y `∅` son disjuntos, por lo que `P(A∪∅) = P(A) + P(∅)`. Asimismo, `A∪∅ = A ⟹ P(A∪∅) = P(A)`. Luego, `P(A) = P(A) + P(∅)`, por lo que `P(∅) = 0`.

* **Proposición**: `∀A⊆S, P(A) + P(A') = 1`, o equivalentemente `P(Aᶜ) = 1 - P(A)`.
    
    **Demostración**: A y Aᶜ son mutuamente excluyentes, por lo que vale que P(A∪Aᶜ)=P(A)+P(Aᶜ). 

    Por otro lado, A∪Aᶜ=S, por lo que vale P(A∪Aᶜ)=P(S)=1.

    Luego, P(A∪Aᶜ) = 1 = P(A)+P(Aᶜ) ⟺ P(Aᶜ) = 1 - P(A)

* **Proposición**: `A⊆B⊆S ⟹ P(A) ≤ P(B)`
    
    **Demostración**:
    S = (A∪Aᶜ)

    B = A∪B = (A∪B)∩S = (A∪B)∩(A∪Aᶜ) = A∪(B∩Aᶜ)

    Y vale que A∩(B∩Aᶜ)=∅.

    ⟹ P(B) = P(A∪(B∩Aᶜ)) = P(A) + P(B∩Aᶜ)

    Y dado que P(B∩Aᶜ)≥0 (por axioma de probabilidad),

    vale que P(B) ≥ P(A)

* `∀A,B⊆S, P(A∪B) = P(A) + P(B) - P(A∩B)`
    
    **Demostración**: 
    A∪B=A∪(Aᶜ∩B), y también A∩(Aᶜ∩B)=∅ ⟹ P(A∪B)=P(A∪(Aᶜ∩B))=P(A)+P(Aᶜ∩B).

    Por otro lado, B=S∩B=(A∪Aᶜ)∩B=(A∩B)∪(Aᶜ∩B) y como (A∩B)∩(Aᶜ∩B)=∅

    ⟹ P(B)=P((A∩B)∪(Aᶜ∩B))=P(A∩B)+P(Aᶜ∩B) ⟹ P(Aᶜ∩B)=P(B)-P(A∩B).

    Dado que P(Aᶜ∩B)=P(B)-P(A∩B) y P(A∪B)=P(A)+P(Aᶜ∩B).

    Finalmente, P(A∪B)=P(A)+P(B)-P(A∩B).

Conteo
------

* Dado un espacio muestral `S` compuesto por pares ordenados de resultados con la forma `(x,y)`, y en donde existen `n` formas de elegir a `x` y `m` formas de elegir a `y`, entonces hay `n * m` pares posibles en `S`.
	* De forma más general, si `S` está compuesto por tuplas `(x₁, x₂, ..., xₙ)`, en donde cada `xᵢ` tiene `nᵢ` posibles elecciones, hay `x₁ * x₂ * ... * xₙ` posibles tuplas en `S`.

* Una **permutación** es un subconjunto ordenado.
	- Dado `S` de `n` objetos, el número de permutaciones posibles de cualquier tamaño posible es `n! = n *  (n-1) * ⋯ * 2 * 1`.
	- Dado `S` de `n` objetos, el número de permutaciones de tamaño `k` posibles es `n!/(n-k)! = n * (n-1) * ⋯ * (n-k+2) * (n-k+1)`.
        - Esto es equivalente a tomar `k` objetos, en orden (por ejemplo, primero uno, luego el que sigue, etcétera) de una bolsa de tamaño `n`.
        - Se puede pensar como: hay `n` posibilidades para el primer objeto, para cada una de estas posibilidades hay `n-1` posibilidades para el segundo objeto, y etcétera hasta el objeto `k`.

* Una **combinación** es un subconjunto no-ordenado.
    - Dado `S` de `N` objetos distintos, el número de subconjuntos posibles de tamaño `m` es el combinatorio `(N m) = N! / (m! (N-m)!)`.
    - Esto es equivalente a tomar `m` objetos sin orden (por ejemplo, todos juntos) de una bolsa de tamaño N.

Probabilidad Condicional
------------------------

* Dado un evento `M` tal que `P(M)≠0`, se define la "probabilidad condicional del evento `A` dado `M`" de la forma `P(A|M) = P(A∩M) / P(M)`.

Probabilidad Total y Teorema de Bayes
-------------------------------------

* **Probabilidad Total**: Sea `(A₁, A₂, ⋯, Aₙ)` una partición de `S` compuesta por `n` eventos disjuntos. La probabidad de un evento `B⊆S` es `P(B) = P(B|A₁)P(A₁) + P(B|A₂)P(A₂) + ⋯ + P(B|Aₙ)P(Aₙ)`
* **Teorema de Bayes**: `P(Aₖ|B) = (P(B|Aₖ)P(Aₖ)) / (∑P(B|Aᵢ)P(Aᵢ))`

Independencia de Eventos
------------------------

* Dos eventos son independientes si la intersección es igual al producto de sus probabilidades, `P(A∩B) = P(A)P(B)`.
