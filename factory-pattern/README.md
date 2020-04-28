# Factory Pattern

Busca responder a pergunta: qual classe criar?

Estratégia: Delega a escolha de classes para subclasses.

Creators:
- base: contem os métodos da Factory (Pond)
- concrete: produzem alguma classe (DuckPond e FrogPond)

Products: as classes que efetivamente são criadas (Frog e Duck)

![Factory Pattern UML](./factory-pattern-uml.png)

Pensando bem, podemos até considerar o *factory pattern* como um especialização do *template pattern* - uma classe genérica e subclasses que tratam especificidades. Só que aqui o problema específico é a escolha da classe a ser criada.
