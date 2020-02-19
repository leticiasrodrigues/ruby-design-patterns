#Observer Pattern

**Desafio:** como conectar partes distantes do código sem aumentar o acoplamento de maneira absurda?

*Employer* é a fonte da informaão e *Payroll* precisa se manter atualizado em relação a ele.

No exemplo inicial temos o seguinte problema: cada vez que adicionamos ou removemos um novo *observer* precisamos mudar a classe *Employer*.
