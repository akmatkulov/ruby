# frozen_string_literal: true

def welcome(greeting: 'Welcome', name: nil)
  puts "#{greeting}, #{name}"
end

my_arguments = { greeting: 'Hi', name: 'Amy' }
welcome(my_arguments)
