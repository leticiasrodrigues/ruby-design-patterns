# frozen_string_literal: true

require_relative 'composite_task'
require_relative 'add_dry_ingrediente_task'
requere_relative 'mix_task'

class MakeBatterTask < CompositeTask
    def initialize
	super('Make Batter Task')
	add_sub_task(AddDryIngredienteTask.new)
	add_sub_task(MixTask.new)
    end
end