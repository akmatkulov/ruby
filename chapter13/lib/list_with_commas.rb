class ListWithCommas
  attr_accessor :items

  def join
    if items.length == 1
      return items[0]
    elsif items.length == 2
      return "#{items[0]} and #{items[1]}"
    end
    last_item = "and #{items.last}"
    other_item = items.slice(0, items.length - 1).join(', ')
    "#{other_item}, #{last_item}"
  end
end
