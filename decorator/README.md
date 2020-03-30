# Decorator Pattern

Exemplo: escrever linhas em um arquivo, mas ou apenas o texto, ou com número da linha, ou com um checksum, ou com timestamp antes.

Primeira solução: um objeto com métodos para cada um desses formatos.

Os problemas
- O cliente sempre tem que saber o formato que ele quer, a cada linhas
- Apenas uma das formatações podem ser utilizada por vez
- Para usar duas maneiras, teríamos que criar mais métodos com todas as combinações e ordens necessárias
