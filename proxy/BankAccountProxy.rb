# frozen_string_literal: true

require 'etc'

class BankAccountProxy
  def initialize(owner_name, &creation_block)
    @creation_block = creation_block
    @owner_name = owner_name
  end

  def method_missing(name, *args)
    check_access
    puts "Delegating #{name} message to subject"
    subject.send(name, *args)
  end

  private

  def subject
    @subject || (@subject = @creation_block.call)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end
