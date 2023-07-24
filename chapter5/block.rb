# frozen_string_literal: true

def my_method(&my_block)
  puts "We're in the method, about to invoke your block!"
  my_block.call
  puts "We're back in the method!"
  my_block.call
end

my_method do
  puts 'Uaaaaa'
end
