# Observer Pattern

**Desafio:** como conectar partes distantes do código sem aumentar o acoplamento de maneira absurda?

*Employer* é a fonte da informação e *Payroll* precisa se manter atualizado em relação a ele.

No exemplo inicial temos o seguinte problema: cada vez que adicionamos ou removemos um novo *observer* precisamos mudar a classe *Employer*.

Criando um interface para adicionar e remover *observers*:
- *Employer* não precisa mudar quando há mais ou menos *observers*
- *Employer* não precisa se preocupar com quantos *observers* tem, nem mesmo se tem ou não algum.

[Implementação](https://github.com/leticiasrodrigues/ruby-design-patterns/commit/19b1e2f79c7551f2d343123e5adb1fbe57509845)

Mas note que todo esse comportamento não é exclusivo de *Employer*. Ele será exatamente o mesmo para qualquer classe que também precisar ser observada. Poderíamos usar herança, como o prejuízo de que em Ruby uma classe só pode ter uma classe pai, então não poderíamos mais usar herança nessa classe. Outra opção seria construir nosso próprio módulo para usá-lo nas classes ou usar um módulo do Ruby: *Observer*.

[Implementação](https://github.com/leticiasrodrigues/ruby-design-patterns/commit/65f657b9522dd627bf7cfdcf45de9ded9f253295)

Esse módulo não recebe blocos, então se quisermos usar isso temos de criar nosso próprio módulo.

[Implementação](https://github.com/leticiasrodrigues/ruby-design-patterns/commit/6400501627e9bfb5c8c5fd90ac6274f3a3ff7960)

A estratégia usada até então é conhecida com *pull method* porque o *observer* pega tudo o que precisa direto o objeto. Outra estratégia é a de *push* em que o objeto já passa algumas informações como parâmetros. Um bom uso para isso seria permitir diferentes observações. A parte negativa é que nem todos *observers* podem precisar das mesmas informações, então teríamos dados desnecessários.

Ex:

```
observer.update_title(self, old_title, new_title)
observer.update_salary(self, old_salary, new_salary)
```

Assim, a decisão chave para implementar esse *pattern* é decidir qual será a interface entre os *observers* e o objeto.

Também é necessário ficar atento para quantas vezes o *observer* será chamado. Se alguém faz uma atribuição para salário mas o valor é o mesmo, o método no *observer* não precisa ser chamado. Também ficar atento para possíveis inconsistências. Se temos modos diferentes de observar mudança de título e de salário, pode ser que um seja chamado antes que o outro tenha sido atualizado, levando a situações onde alguém ganha muito pouco (em relação ao seu novo título) ou demais (em relação ao seu cargo original). Uma boa abordagem, dependendo da aplicação, pode ser aguardar que ambos sejam atualizados para então chamar os *observers*. Outra situação em que se deve atentar para cada caso é: o que acontece se o *observer* dá um erro?

## Comparação
- *Strategy Pattern:* ambos tem um objeto(*observable*/*context*) que faz chamadas em outro objeto (*observer*/*strategy*). A diferença está na intenção: enquanto no primeiro falamos para a *strategy* fazer alguma coisa, no segundo mantemos o *observer* informado de eventos ocorrendo no objeto.
