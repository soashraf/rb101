def stringy(num)
  new_string = ''
  x = 1
  until x > num
    new_string << (x % 2).to_s
    x += 1
  end
  new_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
