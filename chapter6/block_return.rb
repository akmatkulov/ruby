# frozen_string_literal: true

def print_block_result
  block_result = yield
  puts block_result
end

print_block_result { 1 + 1 }

print_block_result do
  "I'm not last expression, so I'm not the return value."
  "I'm result!"
end

print_block_result { 'I hated Truncated'.include?('Truncated') }
