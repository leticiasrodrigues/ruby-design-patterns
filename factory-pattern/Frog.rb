# frozen_string_literal: true

class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts("Frog #{@name} is eating")
  end


  def speak
    puts("Frog #{@name} says Crooaak")
  end

  def sleep
    puts("Frog #{@name} does not sleep, he croaks all night")
  end
end
