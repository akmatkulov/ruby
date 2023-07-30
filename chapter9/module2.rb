module Freindly
  def my_method
    puts "hello form Freindly"
  end
end
module Freindlier
  def method_two
    puts "hello from Frendlier"
  end
end

class ClassOne
  include Freindly
  include Freindlier
end

class ClassTwo
  include Freindly
end

ClassOne.new.my_method
ClassOne.new.method_two