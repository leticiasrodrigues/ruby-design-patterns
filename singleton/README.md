# Singleton Pattern

**Objetivo:** ter apenas uma instância de uma classe, acessível globalmente.

- Garantir que apenas 1 instância exista
- Garantir que pode ser acessada de qualquer lugar

Uma opção: passar essa instância como parâmetro para todas as classes que forem utilizá-la, o que não é muito viável.

Outra opção: utilizando esse *pattern*.

Lembrete: até então os exemplos possuíam variáveis e métodos de instância, mas eles também podem ser de classe.

Usamos esse recurso para criar um *singleton*. Usamos um método de classe para garantir que sempre a mesma instância será retornada, lembrando de tornar o método *new* privado para garantir que nenhuma outra instância seja criada.
