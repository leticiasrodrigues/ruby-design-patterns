#Observer Pattern

**Desafio:** como conectar partes distantes do código sem aumentar o acoplamento de maneira absurda?

*Employer* é a fonte da informaão e *Payroll* precisa se manter atualizado em relação a ele.

No exemplo inicial temos o seguinte problema: cada vez que adicionamos ou removemos um novo *observer* precisamos mudar a classe *Employer*.

Criando um interface para adicionar e remover *observers*:
- *Employer* não precisa mudar quando há mais ou menos *observers*
- *Employer* não precisa se preocupar com quantos *oberservers* tem, nem mesmo se tem ou não algum.
