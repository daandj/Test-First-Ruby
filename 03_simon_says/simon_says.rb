def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  string + (" " + string) * (times - 1)
end

def start_of_word(string, length = 1)
  string.slice(0...length)
end

def first_word(string)
  string.split.first
end

def titleize(string)
  little_words = ["and", "or", "the", "over"]
  array = string.split
  array.map.with_index do |x, i|
    if i == 0
      puts "#{x} is the first word"
      x.capitalize
    elsif little_words.include?(x)
      puts "#{x} is a little word"
      x
    else
      puts "#{x} is not in little_words"
      x.capitalize
    end
  end.join(" ")
end
