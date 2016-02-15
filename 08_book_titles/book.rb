class Book
  attr_accessor :title

  def title=(new_title)
    @title = new_title.capital
  end

end

public

# Capitalizes the title.
def capital
  exceptions = ["and", "or", "in", "of", "the", "a", "an"]
  array = self.split
  array.map!.with_index do |e, i|
    if i == 0
      e.capitalize
    else
      unless exceptions.include?(e)
        e.capitalize
      else
        e
      end
    end
  end
  array.join(" ")
end
