class User
  attr_accessor :name, :profession

  def fio
    puts "Name: #{self.name}"
  end

  def profess
    puts "Profession: #{self.profession}"
  end
end

class Seti
  def seti_method
    puts "I'm class: SETI my number: #{self.object_id}"
  end
end

class PersonalComputer
  attr_accessor :value
  def greeting
    puts "I'm PC! My serial number: #{self.object_id}"
  end
end

class Host
  def my_method
    puts "My host: #{self.object_id}"
  end
end

user = User.new
user.name=("Akmatkulov Sovetbek")
user.profession=("Ruby developer")

puts "-" * 30
user.fio
user.profess

puts "-" * 30
seti = Seti.new
seti.seti_method

puts "-" * 30
pc = PersonalComputer.new
pc.greeting

puts "-" * 30
host = Host.new
host.my_method

  