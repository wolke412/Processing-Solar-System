# Tarefa Computação Gráfica

`pushMatrix()` e `popMatrix()` foram utilizadas no bloco do sistema central (Sol), em cada planeta e em cada lua para 
salvar e restaurar o estado das transformações. 

Isso permite que as matrizes sejam compostas onde necessário, por exemplo a Lua de N deve ser relativa ao Planeta N, 
e a composição de matrizes, utilizando `pushMatrix()`, permite isto. 
Todavia, a Lua de N+1 não deve ser influenciada pela transformação do Planeja N, portanto, `popMatrix()` restaura as tranformações para o estado prévio, permitindo que os planetas/luas componham transformações quando necessário, mas facilmente revertam à origens anteriores.

No planeta e na lua, manter `rotate()` antes de `translate()` faz o deslocamento acontecer no eixo já rotacionado, criando órbita ao redor do corpo pai.
Se inverter para `translate()` e depois `rotate()`, o ponto de rotação muda e o movimento visual deixa de representar uma órbita, passando a ser apenas um ponto fixo rotacionando sob a própria origem, à uma distância determinada por `distance`. 
Você pode visualizar este comportamento seguindo as instruções presentes em [Lua.pde](ImplementedSource/Lua.pde). 
Note: a Lua ainda segue as transformações de planeta, portanto, esta ainda acompanha a rotação do Planeta pai.

Cada órbita é independente porque cada instância tem seu próprio `theta` e `orbitspeed` atualizados em `update()`.
A independência também vem das matrizes empilhadas: planeta e lua aplicam suas transformações em blocos separados com `pushMatrix()/popMatrix()`.


# Diagrama Etapa 1
[Não foi possível carregar a imagem do diagrama.](DiagramaEtapa1.png) 
