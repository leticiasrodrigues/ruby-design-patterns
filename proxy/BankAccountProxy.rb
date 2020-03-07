# frozen_string_literal: true

require 'etc'

class BankAccountProxy
  def initialize(owner_name, &creation_block)
    @creation_block = creation_block
    @owner_name = owner_name
  end

  def deposite(amount)
    check_access
    subject.deposite(amount)
  end

  def withdraw(amount)
    check_access
    subject.withdraw(amount)
  end

  private

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end
end
