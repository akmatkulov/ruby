class Person
  def name=(value)
    @storage=value 
  end 

  def name
    @storage
  end
end

class Employee < Person
  def salary=(value)
    @storage=value
  end 
  def salary
    @storage
  end
end

emp = Employee.new
emp.name = "Grut"
emp.salary = 80000
puts emp.name