# frozen_string_literal: true

class BankAccount
  def initialize(start_balance = 0)
    @balance = start_balance
  end

  def deposite(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
