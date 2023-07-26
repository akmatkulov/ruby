# frozen_string_literal: true

def volume(options)
  result = options[:depth] * options[:height] * options[:width]
  puts "Volume is result: #{result}"
end

volume(depth: 2.5, height: 5, width: 10)
