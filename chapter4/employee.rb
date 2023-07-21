class Employee
  attr_reader :name

  def name=(value)
    raise "Name can't be blank!" if value == ""
    @name = value
  end

  def initialize(name = "Anonymous")
    self.name = name
  end 

  def print_name
    puts "Name: #{self.name}"
  end 
end

class SalariedEmployee < Employee
  attr_reader :salary 
  
  def salary=(value)
    raise "An salary of #{value} isn't valid!" if value < 0
    @salary = value
  end

  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    self.salary = salary
  end 

  def print_pay_stub
    print_name
    pay_for_period = (self.salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee

  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end


  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(value)
    raise "An hourly_wage of #{value} isn't valid!" if value < 0
    @hourly_wage = value
  end

  def hours_per_week=(value)
    raise "An hours_per_week of #{value} isn't valid!" if value < 0
    @hours_per_week = value
  end

  def initialize(name = "Anonymos", hourly_wage = 0.0, hours_per_week  = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end


  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end 

amy = SalariedEmployee.new("Amy",50000)
amy.print_pay_stub

puts "-" * 60

den  = HourlyEmployee.security_guard("Den")
den.print_pay_stub

ivan = HourlyEmployee.cashier("Ivan")
ivan.print_pay_stub

july = HourlyEmployee.janitor("July")
july.print_pay_stub
