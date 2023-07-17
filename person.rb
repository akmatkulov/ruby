class Person
  def greeting
    puts "Hello"
  end
end

class Friend < Person
  
  def greeting
    super
    puts "Glad to see you!"
  end
end

class Enemy < Person
  def greeting
    text = super
    puts "#{text} enemy"
  end
end

vas = Enemy.new
vas.greeting

gazx = Friend.new
gazx.greeting