require_relative 'employer'

pedro = Employer.new('Pedro', 'Professor', 4000)

pedro.salary = 4500

pedro.add_observer do |changed_employee|
  puts "#{changed_employee.name} mudou de salário!"
  puts "Agora ele ganha #{changed_employee.salary}"
end

pedro.salary = 4800
