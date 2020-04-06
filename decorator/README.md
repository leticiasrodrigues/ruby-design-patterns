# Decorator Pattern

Exemplo: escrever linhas em um arquivo, mas ou apenas o texto, ou com número da linha, ou com um checksum, ou com timestamp antes.

Primeira solução: um objeto com métodos para cada um desses formatos.

Os problemas
- O cliente sempre tem que saber o formato que ele quer, a cada linhas
- Apenas uma das formatações podem ser utilizada por vez
- Para usar duas maneiras, teríamos que criar mais métodos com todas as combinações e ordens necessárias

Uma solução para isso é criar decorators para cada um dos formatos desejados. O princípio básico do decorator é delegar, por isso podemos ver vários nele que simplesmente são delegados para a classe principal. Para que isso não precise ser feito na mão, podemos usar o módulo _forwardable_.

Uma outra forma de obter o mesmo resultado é adicionando os novos métodos nas instâncias, com _extend_ ou com _wraping methods_.

Mas atenção:
- Conseguimos dividir as diferentes responsabilidades, mas o cliente agora é responsável por juntar todas as peças. Portanto é bom manter uma interface simples. Em alguns casos, um _builder_ pode ajudar a construir esse encadeamento.
- Se há N decorators, a mensagem será transmitida de um para o outro N vezes. Em alguns casos, isso pode ser um problema.
- Foi usado o _alias_ em um dos exemplos. Ao debugar esse código ele vai aparecer com um nome que não é o que está no código para ele. Esse fator vai demandar um pouco mais de atenção para debugar o código.
