# frozen_string_literal: true

class Employer
  attr_reader :name, :title, :salary

  def initialize(name, title, salary, payroll)
    @name = name
    @title = title
    @salary = salary
    @payroll = payroll
  end

  #precisa ser reescrita devido a necessidade de informar $payroll sobre mudanças
  def salary=(new_salary)
    @salary = new_salary
    @payroll.update(self)
  end
end
