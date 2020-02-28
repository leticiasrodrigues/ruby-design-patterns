# Composite Pattern

Exemplo de uso: quando uma grande tarefa/objeto é formado por outras menores e assim sucessivamente e cada tarefa/objeto tem uma mesma interface com o mundo exterior.

Exemplo: vender um bolo. Para isso é preciso fazê-lo e empacotá-lo. Para fazê-lo, é necessário cozinhar e colocqr o recheio e cobertura. Para cozinha, é preciso medir os ingredientes e misturá-los e assim sucessivamente.

Embora algumas sejam tarefas basicas - insubdivisíveis no contexto - e outras sejam formadas por tarefas menores, para o mundo exterior todas são simplesmente tarefas e levam um tempo para serem feitas. Essa é a interface comum nesse caso.

Nesse *pattern* podemos identificar primariamente três partes:
**Componente:** é aquilo que todos tem em comum, desde a tarefa mais simples até a mais complexa.
**Leaf Class:** as classes mais básicas, indivisíveis.
**Composite:** tarefas de mais alto nível, formadas por outras tarefas simples ou até tarefas já complexas.

Todas as tarefas herdam a classe *Task* pois todas têm um nome e um tempo de preparo. No casos das classes *composite*, isso ocorre por meio de *CompositeTask* que herda *Task* e assim todas elas se parecem com uma *Task* e tem a funcionalidade de juntar *Tasks*.

Até então, era simples obter as partes de um composto, mas não tão simples descobrir a quem elas pertencem. Isso pode ser feito adicionando uma nova referência na nossa *Task* e atualizando ela cada vez que o componente é adicionado ou removido.
