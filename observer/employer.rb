# frozen_string_literal: true

require_relative 'subject'

class Employer
  attr_reader :name, :title, :salary

  include Subject

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  #precisa ser reescrita devido a necessidade de informar $payroll sobre mudanças
  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end
