# frozen_string_literal: true

def alert_if_true
  if yield
    puts 'Block returned true!'
  else
    puts 'Block returned false!'
  end
end

alert_if_true { 1 < 3 }
alert_if_true { 2 > 3 }
alert_if_true { 2 + 2 == 5 }
