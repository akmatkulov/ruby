# frozen_string_literal: true

def greeting
  puts "Hello, #{yield}"
end

greeting { 'World!' }
