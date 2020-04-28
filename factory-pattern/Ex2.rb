# frozen_string_literal: true

require_relative 'animals'
require_relative 'plants'

class Pond
  def initialize(animal_class, number_animals, plant_class, number_plants)
    @animal_class = animal_class
    @plant_class = plant_class

    @animals = []
    create_animals(number_animals)

    @plants = []
    create_plants(number_plants)
  end

  def simulate_one_day
    @plants.each { | plant| plant.grow }
    @animals.each { |animal| animal.speak }
    @animals.each { |animal| animal.eat }
    @animals.each { |animal| animal.sleep }
  end

  private

  def create_animals(number)
    number.times do |i|
      animal = new_organism(:animal, "Animal#{i}")
      @animals << animal
    end
  end

  def create_plants(number)
    number.times do |i|
      plant = new_organism(:plant, "Plant#{i}")
      @plants << plant
    end
  end

  def new_organism(type, name)
    if type == :animal
      @animal_class.new(name)
    elsif type == :plant
      @plant_class.new(name)
    else
      raise "Unknown organism type: #{type}"
    end
  end
end

Pond.new(Frog, 3, WaterLily, 2).simulate_one_day
Pond.new(Duck, 4, WaterLily, 1).simulate_one_day
Pond.new(Duck, 2, Algae, 2).simulate_one_day
