class Steak
  include Comparable
  GRADE_SCORES = { "Prime" => 3, "Choice" => 2, "Select" => 1 }
  attr_accessor :grade

  def <=>(other)
    if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
      return 0
    else
      return 1
    end
  end
end
prime = Steak.new
prime.grade = "Prime"
choice = Steak.new
choice.grade = "Choice"
selects = Steak.new
selects.grade = "Select"

puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < selects}"
puts "select == select: #{selects == selects}"
puts "select <= select: #{selects <= selects}"
puts "select >= chocie: #{selects >= choice}"

puts "choice.between?(select, prime): #{choice.between?(selects, prime)}"