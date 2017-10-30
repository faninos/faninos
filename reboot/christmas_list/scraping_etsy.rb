require "byebug"

def display_list(item_list)
  item_list.each_with_index do |item, index|
      puts "-#{item[:name]}- | bought it: -#{item[:bought]}-"
    end
end

def add_item (item_list)
  puts "\nplease enter the item name\n"
    item_name = gets.chomp
    item_list << {name: item_name, bought: "no"}
end

def delete_item(item_list, item_to_be_deleted)
  puts "\nplease enter the number of the item you wanna delete\n"
      item_list.each_with_index do |item, index|
      puts "#{index + 1}-the item: -#{item[:name]}- | bought it: -#{item[:bought]}- "
      end
  item_to_be_deleted = gets.chomp.to_i
  item_list.delete_at(item_to_be_deleted - 1)
end

def bought (item_list, bought_item_index)
  puts "\nplease enter the number of the item you just bought\n"
      item_list.each_with_index do |item, index|
      puts "#{index + 1}-the item: -#{item[:name]}- | bought it: -#{item[:bought]}- "
      end
  bought_item_index = gets.chomp.to_i
  item_list[bought_item_index - 1][:bought] = "yes"
end

def search_by_article
  puts "What are you searching on Etsy?"
    article = gets.chomp
    file = open("https://www.etsy.com/search?q=#{article}")
    doc = Nokogiri::HTML(file)
    doc.search(".card").each do |card|
      title = card.search(".card-title").text.strip

      puts title
    end
end
def search_by_price
  puts "What the price of the artcile you wanna search on Etsy?"
  price = gets.chomp
  file = open("https://www.etsy.com/search?q=#{price}")
  doc = Nokogiri::HTML(file)
  doc.search(".card").each do |card|
    title = card.search(".card-title").text.strip
    puts title
  end
end

