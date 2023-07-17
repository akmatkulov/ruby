class Dog

  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank!" if value == ""
    @name = value
  end
  def age=(value)
    raise "An age of #{value} isn't valid!" if value < 0
    @age = value
  end 

  def talk 
    puts "#{@name} says Bark!"
  end
  def move(destination)
    puts "#{@name} running to the #{destination}"
  end
  def report_age
    puts "#{@name} is #{@age} years."
  end
end


dog = Dog.new
dog.name="Richi"
dog.age=3
dog.talk
dog.move("house")
dog.report_age
