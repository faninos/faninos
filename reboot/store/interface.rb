require_relative "cart"
food_list = {
1 => {name: "Apple", price: 1, store: 5 },
2 => {name: "Pear", price: 2, store: 5 },
3 => {name: "Coca", price: 7, store: 5 },
4 => {name: "Snickers", price: 4, store: 5 },
5 => {name: "Water", price: 3, store: 5 }
}
i = 0
answer = ""
caddy = Hash.new(0)
#number_of_item =[]
#items =[]
total_cost = 0
i = 1

puts "\nWelcome to our new super shop\n\n"

while answer != "no".upcase
    food_list.each do |fruit,desc|
      print "There is #{desc[:store]} #{desc[:name]} (ref: #{fruit}) left at #{desc[:price]} €\n"
    end


    puts  "\nPlease enter the #{i} item product ref:"
    product_ref = gets.chomp.to_i
    puts "\nhow much of this article  do you want?"
    quantity = gets.chomp.to_i
    if food_list[product_ref][:store] - quantity >= 0
      food_list[product_ref][:store] -= quantity
      answer = gets.chomp.to_s.upcase
      caddy[product_ref] += quantity
      i += 1
    else
      puts  "\nNot enough stock\n"
    end
    puts "anything else?\n"
    answer = gets.chomp.upcase
end

#client_return.each_with_index  do |element, index|
#  number_of_item << element
  #else
  #items << element
  #end
#end

returning(caddy, food_list)
cart(caddy, food_list)














