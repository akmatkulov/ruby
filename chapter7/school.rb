# frozen_string_literal: true

school = {
  'Simone' => 'here',
  'Cameron' => 'here'
}

names = %w[Simone Ferriss Jeanie Cameron]

names.each do |item|
  if school[item]
    puts "#{item} is present!"
  else
    puts "#{item} is absent!"
  end
end
