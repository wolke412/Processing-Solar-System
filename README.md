# Computer Graphics Assignment
Usei `pushMatrix()` e `popMatrix()` no bloco do sistema central (Sol), em cada planeta e em cada lua para salvar e restaurar o estado das transformações.
Isso evita que a rotação/translação de um corpo afete o próximo corpo desenhado.
No planeta e na lua, manter `rotate()` antes de `translate()` faz o deslocamento acontecer no eixo já rotacionado, criando órbita ao redor do corpo pai.
Se inverter para `translate()` e depois `rotate()`, o ponto de rotação muda e o movimento visual deixa de representar a mesma órbita.
Cada órbita é independente porque cada instância tem seu próprio `theta` e `orbitspeed` atualizados em `update()`.
A independência também vem das matrizes aninhadas: planeta e lua aplicam suas transformações em blocos separados com `pushMatrix()/popMatrix()`.
