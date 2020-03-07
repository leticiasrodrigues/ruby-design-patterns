require_relative 'bankAccount'
require_relative 'bankAccountProxy'

proxy = BankAccountProxy.new("ltc")  { BankAccount.new(100) }
proxy.deposite(200)
proxy.withdraw(100)
