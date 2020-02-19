require_relative 'payroll'
require_relative 'employer'

payroll = Payroll.new
pedro = Employer.new('Pedro', 'Professor', 4000, payroll)
pedro.salary = 4500
