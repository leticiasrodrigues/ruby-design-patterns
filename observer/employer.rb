# frozen_string_literal: true

class Employer
  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observer.delete(observer)
  end

  #precisa ser reescrita devido a necessidade de informar $payroll sobre mudanças
  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  private

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end
