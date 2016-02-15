def add(left, right)
  left + right
end

def subtract(left, right)
  left - right
end

def sum(array)
  answer = 0
  array.each do |x|
    answer += x
  end
  answer
end

def multiply(array)
  answer = 1
  unless array.empty?
    array.each do |x|
      answer *= x
    end
    answer
  else
    0
  end
end
