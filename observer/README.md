# Observer Pattern

**Desafio:** como conectar partes distantes do código sem aumentar o acoplamento de maneira absurda?

*Employer* é a fonte da informaão e *Payroll* precisa se manter atualizado em relação a ele.

No exemplo inicial temos o seguinte problema: cada vez que adicionamos ou removemos um novo *observer* precisamos mudar a classe *Employer*.

Criando um interface para adicionar e remover *observers*:
- *Employer* não precisa mudar quando há mais ou menos *observers*
- *Employer* não precisa se preocupar com quantos *observers* tem, nem mesmo se tem ou não algum.

Mas note que todo esse comportamento não é exclusivo de *Employer*. Ele será exatamente o mesmo para qualquer classe que também precisar ser observada. Poderíamos usar herança, como o prejuízo de que em Ruby uma classe só pode ter uma classe pai, então não poderíamos mais usar herança nessa classe. Outra opção seria construir nosso próprio módulo para usá-lo nas classes ou usar um módulo do Ruby: *Observer*.

Esse módulo não recebe blocos, então se quisermos usar isso temos de criar nosso próprio módulo.
