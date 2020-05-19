# frozen_string_literal: true

require_relative 'animals'
require_relative 'plants'

class Habitat
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
      animal = @animal_class.new("Animal#{i}")
      @animals << animal
    end
  end

  def create_plants(number)
    number.times do |i|
      plant = @plant_class.new("Plant#{i}")
      @plants << plant
    end
  end
end

Habitat.new(Frog, 3, WaterLily, 5).simulate_one_day
Habitat.new(Duck, 4, WaterLily, 1).simulate_one_day
Habitat.new(Duck, 6, Algae, 2).simulate_one_day
Habitat.new(Tiger, 2, Tree, 10).simulate_one_day

Habitat.new(Tiger, 3, WaterLily, 5).simulate_one_day
Habitat.new(Duck, 4, Tree, 1).simulate_one_day
