# frozen_string_literal: true

require 'observer'

class Employer
  attr_reader :name, :title, :salary

  include Observable

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end

  #precisa ser reescrita devido a necessidade de informar $payroll sobre mudanças
  def salary=(new_salary)
    @salary = new_salary
    changed #necessário porque, no módulo, os observers só serão notificados se ele foi avisado que algo realmente mudou
    notify_observers(self)
  end
end
