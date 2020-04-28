## frozen_string_literal: true

class ClassVariableMethodTester
  @@class_count = 0

  def initialize
    @instance_count = 0
  end

  def increment
    @@class_count += 1
    @instance_count += 1
  end

  def to_s
    "class_count: #{@@class_count}, instance_count: #{@instance_count}"
  end

  def self.to_s
    "class_count: #{@@class_count}"
  end
end

c1 = ClassVariableMethodTester.new
c1.increment
c1.increment

puts c1.to_s

c2 = ClassVariableMethodTester.new
puts c2.to_s

puts ClassVariableMethodTester.to_s
