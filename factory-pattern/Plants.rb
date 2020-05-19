# frozen_string_literal: true

class WaterLily
  def initialize(name)
    @name = name
  end

  def grow
    puts("The water lily #{@name} floats, soaks up the sun, and grows")
  end
end


class Algae
  def initialize(name)
    @name = name
  end

  def grow
    puts("The algae #{@name} soaks up the sun, and grows")
  end
end

class Tree
  def initialize(name)
    @name = name
  end

  def grow
    puts("The tree #{@name} grows tall")
  end
end
