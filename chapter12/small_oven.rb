class OvenOffError < StandardError
end
class OvenEmptyError < StandardError
end


class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turnin oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise OvenOffError,"You need to turn the oven on first!"
    end
    if @contents == nil
      raise OvenEmptyError, "There's nothing in the oven!"
    end
    "golden-brown #{self.contents}"
  end
end

dinner = ["turkey", nil, "pie"]
oven = SmallOven.new
oven.turn_off


  begin
    oven.turn_on
    oven.contents = nil
    puts "Serving #{oven.bake}"
  rescue OvenEmptyError => error
    puts "Error: #{error.message}"
  ensure 
    oven.turn_off
  end
