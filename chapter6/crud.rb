# frozen_string_literal: true

lines = []

File.open('rewiews.txt') do |rewiew_file|
  lines = rewiew_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?('Truncated') }
reviews = relevant_lines.reject { |line| line.include?('--') }

def find_adjective(string)
  words = string.split(' ')
  index = words.find_index('is')
  words[index + 1]
end

adjectives = reviews.map do |line|
  adjective = find_adjective(line)
  "'#{adjective.capitalize}'"
end

puts adjectives
