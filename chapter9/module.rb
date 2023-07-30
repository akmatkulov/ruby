module MyModule
  def first_method
    puts "First method"
  end
  def second_method
    puts "Second method"
  end 
end 

class MyClass
  include MyModule
end 

item = MyClass.new
item.first_method
item.second_method