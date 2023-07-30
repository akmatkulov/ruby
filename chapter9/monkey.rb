module Curious
  def investigate(value)
    puts "Looks at #{value}"
  end
end

module Clumsy
  def break(value)
    puts "Knocks over #{value}"
  end
end

class Monkey
  include Curious
  include Clumsy
end

bubbles = Monkey.new
bubbles.investigate("vase")
bubbles.break("vase")