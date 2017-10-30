
def returning(caddy, food_list)
  caddy.each do |key, value|
    print "You have got #{caddy[key]} #{food_list[key][:name]}\n"
  end
end



def cart(caddy, food_list)
total = 0
  caddy.each do |key, value|
    price = food_list[key][:price]
    quantity = value
    total += price*quantity
  end
  puts "\nYour total is #{total}€"
end















#
