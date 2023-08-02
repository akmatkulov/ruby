class ListWithCommas
  attr_accessor :items

  def join
    last_item = "and #{self.items.last}"
    other_item = items.slice(0, items.length - 1).join(", ")
    "#{other_item} #{last_item}"
  end
end

  two_subjects = ListWithCommas.new
  two_subjects.items = ["my parents", "a radeo clown"]
  puts "A photo of #{two_subjects.join}"

  theree_subjects = ListWithCommas.new
  theree_subjects.items = ["my parents", "a radeo clown", "a prize bull"]
  puts "A photo of #{theree_subjects.join}"
