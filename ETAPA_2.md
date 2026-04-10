# Etapa 2


-   Onde theta é incrementado:
    `theta`  é incrementado na função `update` da classe `Planeta`. A função atualiza o valor do próprio
    `theta` incrementando-o por `orbitSpeed`. Além disso, invoca a função `update` de sua propriedade `moon`, a qual atualiza
    o `theta` de `Moon` também.

-   Como OrbitSpeed influencia o movimento:
    A propriedade `theta` representa o ângulo em radianos em relação à origem. `orbitSpeed` representa o fator de deslocamento, 
    também em radianos, ou seja, a velocidade que o satélite se desloca na órbita.

-   Porque as velocidades das luas podem ser positivas ou negativas?
    Pois se tratam de deslocamentos, e o deslocamento pode ser negativo.

