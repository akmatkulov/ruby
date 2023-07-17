class Animal
  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank!" if value == ""
    @name = value
  end
  
  def age=(value)
    raise "An age of #{value} isn't valid!" if value < 0
    @age = value
  end

  def move(destination)
    puts "#{@name} running to the #{destination}."
  end

  def talk
    puts "#{@name} says Bark!"
  end 

  def report_age
    puts "#{@name} is #{@age} years."
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dog age #{@age}."
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Bird < Animal
  def move(destination)
    puts "#{@name} flying to the #{destination}."
  end
  def talk
    puts "#{@name} says Chirip chirip."
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls."
    super(destination)
  end
end

dog = Dog.new
dog.move("ss")