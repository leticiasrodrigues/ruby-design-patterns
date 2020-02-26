# frozen_string_literal: true

require_relative 'task'

class AddDryIngredienteTask < Task
    def initialize
	super('Add ingrediente')
    end

    def get_time_required
        1.0
    end
end