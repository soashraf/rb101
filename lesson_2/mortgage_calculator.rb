# loan amount
# APR
# loan duration

# calculate:
# monthly interest rate
# loan duration in months
# monthly payment

loan_amount = ''
apr = ''
loan_duration = ''

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

puts "Welcome to the mortgage calculator!!"

loop do
  loop do
    puts 'How much would you like to borrow?'
    num = gets.chomp
    if integer?(num)
      loan_amount = num.to_i
      break
    else
      puts 'That does not look like a valid amount.'
      puts 'Please only enter a whole number'
    end
  end

  loop do
    puts 'What is the APR for your loan?'
    num = gets.chomp
    if number?(num)
      apr = num.to_f
      break
    else
      puts 'That does not look like a valid APR.'
    end
  end

  loop do
    puts 'How many months do you require the loan for?'
    num = gets.chomp
    if integer?(num)
      loan_duration = num.to_i
      break
    else
      puts 'Please enter a valid monthly duration'
    end
  end

  monthly_interest_rate = apr / 100 / 12

  monthly_payment = loan_amount * (monthly_interest_rate /
    (1 - (1 + monthly_interest_rate)**(-loan_duration)))

  puts "Your monthly payment is #{monthly_payment.round(2)}"

  puts 'Would you like to perform another calculation? (y to calculate again)'
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end

puts 'Thank you for using the mortgage calculator'
