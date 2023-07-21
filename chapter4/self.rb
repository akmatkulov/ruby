class MyClass
  def first_method
    puts "Current instance within first_method: #{self}"
  end
end

my_object = MyClass.new
puts "my_object refers to this object: #{my_object}"
my_object.first_method

puts "-" * 80

class CieseClass
  def first_method
    puts "Current instance within first_method: #{self}"
    self.second_method 
  end

  def second_method
    puts "Current instance within second_method: #{self}"
  end 
end

amy = CieseClass.new
amy.first_method