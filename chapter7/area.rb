# frozen_string_literal: true

def area(options)
  options[:length] * options[:width]
end

puts area({ length: 2, width: 4 })
