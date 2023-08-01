def square_sum(numbers)
  count = 0
  numbers.each do |item|
    count += item ** 2
  end
  puts count
end

square_sum([0, 3, 4, 5])