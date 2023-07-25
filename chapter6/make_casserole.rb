# frozen_string_literal: true

def make_casserole
  puts 'Preheat oven to 375 degrees'
  puts "Place #{yield} in dish"
  puts 'Bake for 20 minutes'
end

make_casserole { 'noodles, celery, and tuna' }
make_casserole { 'rice, broccoli, and chiken' }
