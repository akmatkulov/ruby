# frozen_string_literal: true

def total(arr)
  amount = 0
  arr.each { |item| amount += item }
  amount
end

def refund(arr)
  amount = 0
  arr.each { |item| amount -= item }
  amount
end

def show_discount(arr)
  arr.each { |item| puts format('Your discount: $%.2f', item / 3.0) }
end

prices = [3.99, 25.00, 8.99]

puts format('Total prices: $%.2f', total(prices))
puts format('Refund prices: $%.2f', refund(prices))
show_discount(prices)
