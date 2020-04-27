# Singleton Pattern

**Objetivo:** ter apenas uma instância de uma classe, acessível globalmente.

- Garantir que apenas 1 instância exista
- Garantir que pode ser acessada de qualquer lugar

Uma opção: passar essa instância como parâmetro para todas as classes que forem utilizá-la, o que não é muito viável.

Outra opção: utilizando esse *pattern*.

Lembrete: até então os exemplos possuíam variáveis e métodos de instância, mas eles também podem ser de classe.

Usamos esse recurso para criar um *singleton*. Usamos um método de classe para garantir que sempre a mesma instância será retornada, lembrando de tornar o método *new* privado para garantir que nenhuma outra instância seja criada.

Alternativas:

1. Variável global. Pode ser acessada de qualquer lugar. No entanto, não posso garantir que esse objeto é o único. Além disso, também não posso controlar o valor dessa variável globalmente.

Esse segundo problema pode ser resolvido com o uso de constantes, impedindo a mudança do valor. No entanto, o problema de na verdade a classe não ser única (e portanto, não ser um singleton) continua. Além disso, essa abordagem não permite o objeto ser criado apenas quando necessário.

2. Classes. Simplesmente usar métodos e variáveis de classe resolve o problema de unicidade. No entanto, ainda não é possível inicializar a classe apenas quando precisamos dela.

3. Módulos. Módulos, diferente de classes, não podem ser instanciados. ão apenas métodos para serem chamados. Do ponto de vista de código, ficaria mais claro entender a função dele como singleton do que uma classe cheia de métodos e variáveis de classe. 
