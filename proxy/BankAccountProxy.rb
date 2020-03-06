# frozen_string_literal: true

require 'etc'

class BankAccountProxy
  def initialize(real_object, owner_name)
    @real_object = real_object
    @owner_name = owner_name
  end

  def deposite(amount)
    check_access
    @real_object.deposite(amount)
  end

  def withdraw(amount)
    check_access
    @real_object.withdraw(amount)
  end

  private

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end
