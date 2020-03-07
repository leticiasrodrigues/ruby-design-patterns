# Proxy Pattern

Que tipos de problema resolve?
- controlar acesso a um objeto
- criar o objeto o mais tarde possível
- *provide a location-independent way of getting at the object*

O proxy é quem tem o objeto real, não o cliente. O proxy é quem chama no objeto tudo que o cliente gostaria.

## Protection Proxy

O proxy pode servir como a porta de entrada para o objeto, e assim cuidar da responsabilidade sobre quem pode ou não executar ações.
Isso poderia estar direto na classe? Sim, poderia. Mas separar essas duas responsabilidades permite que as regras de acesso possam ser facilmente mudadas sem alterar em nada como a conta funciona. Além do fato que a classe que representa a conta fica responsável apenas por coisas relativas a conta.
Por fim, se um dia eu quiser eliminar essas regras de acesso, é só tirar o proxy.
Outra vantagem é que tirando o objeto do cliente nós diminuímos a chance de que alguma informação que não devia ser transmitida vaze.

## Remote Proxy

No geral, também oferece uma clara separação de funções. O proxy atua como responsável de manipular o envio e recebimento de informação entre o cliente e um servidor, por exemplo, sem que o cliente saiba disso. Essa separação permite uma fácil mudança de protocolos: basta mudar o proxy.

## Virtual Proxy

Esse tipo de proxy retarda a criação do objeto real até o último momento, quando ele efetivamente será utilizado. Isso pode ser feito de duas formas. A primeira é criando o objeto no próprio proxy, que tem como ponto negativo o fato de isso aumentar o acoplamento entre o código e o objeto. O outro é passando a instrução da criação do objeto por meio de de um *block*.
Novamente temos uma clara separação de funções: o objeto foca em fazer as coisas específicas do domínio enquanto o proxy se preocupa com qual é o momento propício de criá-lo.

## Enviando mensagens

Uma coisa ruim desse *pattern* é que todos os métodos da classe original precisam ser de alguma forma replicados para serem chamados. Para resolver esse problema é necessário relembrar que quando fazemos
```
object.message(argument)
```
o que estamos fazendo não é exatamente chamando um método, mas passando uma mensagem ao objeto com alguns argumentos. A partir disso, o método será buscado na classe, em seus módulos, em sua superclasse, até chegar na superclasse *Object*. A partir daí, ele volta enviando a mensagem *method_missing* até encontrar alguém que responda a ele. Se isso chegar até *Object* teremos o conhecido erro *NoMethodError*.
No contexto de proxies, isso é útil para duas coisas: podemos diretamente enviar mensagens aos objetos principais (ou invés de chamar métodos) e saber quando um método que não existe foi chamado.

Mas cuidado! O proxy em si é um *Object*. Portanto, algo como:
```
proxy = BankAccountProxy.new("ltc")  { BankAccount.new(100) }
puts proxy
```
vai enviar a mensagem *to_s* para o proxy, pois vai encotrar esse método em *Object* e, assim, não vai chamar o método *method_missing* e consequentemente não vai chamar o *to_s* no objeto real.

Embora funcione, usar o *method_missing* deixa o código um pouco obscuro e certamente mais lento. Portanto tenha certeza que de é necessário antes de usá-lo.
