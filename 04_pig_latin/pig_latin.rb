# Function that is was called initialy.

def translate(sentence)
  array = sentence.split
  array.map! do |x|
    translate_w(x)
  end
  array.join(" ")
end

# Translates seperate words.

def translate_w(word)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(word[0])
    translate_w_vowel(word)
  else
    translate_w_consonant(word)
  end
end

# Translates words that begin with a vowel.

def translate_w_vowel(word)
  word + "ay"
end

# Translates words that don't begin with a vowel.

def translate_w_consonant(word)
  vowels = ["a", "e", "i", "o", "u"]
  i = 0
  while !vowels.include?(word[i])
    if word[i] + word[i + 1] == "qu"
      i += 2
    else
      i += 1
    end
  end
  word[i..-1] + word[0...i] + "ay"
end
