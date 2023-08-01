# This class allows you to perform various
class WordSpliter
  include Enumerable

  # The string to split into words.
  attr_accessor :string

  # Passes each word in the string to a block
  def each 
    string.split(" ").each do |word|
      yield word
    end 
  end
end
