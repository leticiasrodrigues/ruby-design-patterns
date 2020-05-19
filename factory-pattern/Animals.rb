# frozen_string_literal: true

class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts("Duck #{@name} is eating")
  end


  def speak
    puts("Duck #{@name} says Quack")
  end

  def sleep
    puts("Duck #{@name} sleeps quitly")
  end
end

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

class Tiger
  def initialize(name)
    @name = name
  end

  def eat
    puts("Tiger #{@name} eats anything it wants")
  end


  def speak
    puts("Frog #{@name} Roars!")
  end

  def sleep
    puts("Frog #{@name} sleeps anywhere it wants")
  end
end
