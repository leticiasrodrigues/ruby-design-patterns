require_relative 'duckPond'
require_relative 'frogPond'

pond = FrogPond.new(3)
pond.simulate_one_day

pond = DuckPond.new(2)
pond.simulate_one_day
