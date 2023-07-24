# frozen_string_literal: true

def give
  yield('2 turtle doves')
end

give { |present| puts present }
