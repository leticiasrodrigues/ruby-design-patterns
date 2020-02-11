# Design Patterns in Ruby

Os exemplos e explicações foram extraídos do Livro *Design Patterns in Ruby* de Russ Olsen.

## Introdução
**Patterns:** soluções para alguns problemas de design comuns. A simples utilização de um _pattern_ não deixará o código melhor, mas sim a utilização do _pattern_ certo, para o problema específico que ele soluciona.

Introduzidas pela GoF (_Gang of Four_: Erick Gamma, Richard Helm, Ralph Johnson and John Vlissides) em 1995, com 23 _patterns_.

### Patterns for Patterns
Princípios gerais a serem considerados no design:

**Separar coisas que mudam daquelas que são estáveis:** evitar que partes estáveis também precisam ser mudadas quando modificamos as partes mais instáveis.

**Programe para uma interface, não para implementação:** diminuir o acoplamento entre as classes, tentar pensar em termos do tipo mais genérico passível ao invés de tipos específicos.

**Prefira usar Composição no lugar de Herança:** herança, naturalmente, cria um acoplamento entre diferentes subclasses através da superclasse. Se essa última muda, podemos ter efeitos indesejados em alguma das classes inferiores. Além disso, uma vew escolhida uma classe, não podemos mudá-la. Usando composição, diferentes objetos não estão tão acoplados e podemos a qualquer momento mudar a composição deles.

**Delegue, delegue, delegue:** maior flexibilidade.

**Você não precisa disso:** não tente antecipar problemas. Se já é difícil encontrar solução para um problema que temos, imagina para um que nem aconteceu? Tenha sempre em mente que o código vai mudar em algum momento, mas não tente antecipar essas mudanças. Resolva bem o problema do presente.
