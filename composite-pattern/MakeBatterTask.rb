# frozen_string_literal: true

require_relative 'compositeTask'
require_relative 'addDryIngredienteTask'
require_relative 'mixTask'

class MakeBatterTask < CompositeTask
  def initialize
    super('Make Batter Task')
    add_sub_task(AddDryIngredienteTask.new)
    add_sub_task(MixTask.new)
  end
end
