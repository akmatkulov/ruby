puts format("The %s cost %i cents each.", "gumballs", 23)
puts format("That will be $%f please.", 0.23 * 5)
puts "-" * 40

puts format("A string: %s", "hello")
puts format("An integer: %i", 50)
puts format("A float: %f", 3.1222332)
puts "-" * 40

puts format("%12s | %s", "Product", "Cost in Cents")
puts "-" * 30
puts format("%12s | %2i", "Stamps", 50)
puts format("%12s | %2i", "Paper Clips", 5)
puts format("%12s | %2i", "Tape", 99)
puts "-" * 30

def test_format(format_string)
  print "Testing #{format_string} "
  puts format(format_string, 12.3456)
end

test_format("%7.3f")
test_format("%7.2f")
test_format("%7.1f")
test_format("%.1f")
test_format("%.2f")

puts "-" * 30

puts format("$%.2f", 2514.84612847621)
puts format("$%.2f", 1150.52431293102)
puts format("$%.2f", 3068.21435716391)