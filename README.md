# Análise de dados Jéssica Malheiros

1. Comparação de ajuste de regressão do Ct (vírus puro com biplex)
2. Comparação de métodos (PCR x Titulação)

## Ajuste de Ct ##

Objetivo: Descobrir qual "combinação" de vírus vacinal é "melhor"
- monoplex
- biplex diluído
- biplex concentrado

### Vírus ###

**Monoplex**

- Caxumba (Cx)
- Rubéola (Rp)
- Sarampo (Sp)

**Biplex**

- Caxumba + Sarampo (CS)
- Caxumba + Rubéola (CR)

### Critério de comparação ###

Minimizar o Ct

## Comparação de Métodos ##

Análise estatística da validação entre os métodos:

- PCR
- Titulação

Mesmas amostras, mesmas diluições, em quadruplicata (2 cinética A, 2 cinética B).

### Gráficos ###

- ~~Dotplots~~ Regressão Simples do Ct ~~(ou alternativa)~~
    - ~~2x2 Caxumba, 2 Rubeola, 2 Sarampo~~ (07/12/2016)
    - ~~Puro x Concentrado/Diluido~~ (07/12/2016)
- ~~ Comparação de métodos: Regressão simples das Quantidades~~
    - ~~cinética A, cinética B, pool das cinéticas~~ (22/01/2017)

## Metodologia ##

Os dados ajustados com modelos de regressão linear simples, que foram comparados de acordo com o coeficiente de determinação (R^2) de cada modelo.
Quanto maior o valor de R^2, melhor é o ajuste do modelo aos dados.

As amostras com títulos nulos não foram considerados para os modelos de regressão.

Os modelos obtidos foram apresentados, bem como os coeficientes de determinação foram apresentados em cada gráfico.

Figuras compostas por mais de um gráfico têm escalas iguais, para facilitar a comparação dos resultados.

Todas as análises estatísticas foram feitas usando o software R, versão 3.3.2.
