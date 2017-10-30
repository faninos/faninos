require_relative "calc.rb"
continue = ""
while continue != "exit"

puts "hello\nPlease enter the first number to compute"
 first_number = gets.chomp.to_i

puts "could you give us the second number to compute"

second_number = gets.chomp.to_i

puts "wich operation would you like to execute?"

operator = gets.chomp



puts calc(first_number,second_number,operator)
puts "continue? "
continue = gets.chomp.to_s
end








