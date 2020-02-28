# frozen_string_literal: true

require_relative 'task'

class CompositeTask < Task
  attr_accessor :sub_tasks

  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each do |task|
      time += task.get_time_required
    end
    time
  end

  def add_sub_task(task)
    @sub_tasks << task
    task.parent = self
  end

  def delete_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end
end
