# frozen_string_literal: true

def triple_result
  puts 3 * yield
end

triple_result { 2 }
triple_result { 10 }
triple_result { 5 }
