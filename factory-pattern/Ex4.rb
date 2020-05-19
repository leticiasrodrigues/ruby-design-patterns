# frozen_string_literal: true

require_relative 'habitats'

class Habitat
  def initialize(number_animals, number_plants, organism_factory)
    @organism_factory = organism_factory

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
      animal = @organism_factory.new_animal("Animal#{i}")
      @animals << animal
    end
  end

  def create_plants(number)
    number.times do |i|
      plant = @organism_factory.new_plant("Plant#{i}")
      @plants << plant
    end
  end
end

Habitat.new(4, 5, JungleOrganismFactory.new).simulate_one_day
Habitat.new(3, 6, PondOrganismFactory.new).simulate_one_day
