# ask the user for 2 numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts"Welcome to Calculator!"
puts "Whats the first number?"
number1 = gets.chomp

puts "Whats the second number?"
number2 = gets.chomp

puts "What operation whould you like to perform? 1)add 2)subtract 3)multiply 4)divide"
operator = gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
elsif operator == '4'
  result = number1.to_f / number2.to_f
end

puts "The answer is #{result}"