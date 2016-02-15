def ftoc(temp)
  temp = temp.to_f
  cel = (temp - 32.0) / 9 * 5
end

def ctof(temp)
  temp = temp.to_f
  far = temp / 5 * 9 + 32
end
