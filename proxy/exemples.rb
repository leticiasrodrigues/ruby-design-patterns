require_relative 'bankAccount'
require_relative 'bankAccountProxy'

account = BankAccount.new(100)
account.deposite(200)
account.withdraw(100)

proxy = BankAccountProxy.new(account, "Fulano")
proxy.deposite(200)
proxy.withdraw(100)
