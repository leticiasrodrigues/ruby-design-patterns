require_relative 'payroll'
require_relative 'employer'
require_relative 'tax_man'

payroll = Payroll.new
tax_man = TaxMan.new

pedro = Employer.new('Pedro', 'Professor', 4000)

pedro.salary = 4500

pedro.add_observer(payroll)

pedro.salary = 4800

pedro.add_observer(tax_man)

pedro.salary = 5000
