# frozen_string_literal: true

class Payroll
  def update(changed_employee)
    puts("#{changed_employee.name} mudou de salário!")
    puts("Agora eme recebe #{changed_employee.salary}")
  end
end
