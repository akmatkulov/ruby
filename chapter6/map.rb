# frozen_string_literal: true

squares = [2, 3, 4].map { |num| num**2 }
cubes = [2, 3, 4].map { |num| num**3 }

area_codes = %w[1-800-555-0199 1-402-555-0123].map do |phone|
  phone.split('-')[3]
end

p squares, cubes, area_codes
