require_relative "scraping_etsy"

require "open-uri"
require "nokogiri"

item_list = []
answer = 0
item_to_be_deleted = 0
bought_item_index = 0

puts "\n\nWelcome to our christams gift list handler\n"

puts "\nWhat wou like to do?\n\n 1- Display the list\n 2- Add a new item\n 3- Delete an item\n 4- Mark an item as bougt \n 5-Idea from etsy by name \n 6-Idea from etsy by price\n 7- Exit\n\n"
answer = gets.chomp.to_i

while answer != 7
  if answer == 1
    display_list(item_list)
  elsif answer == 2
    add_item(item_list)
  elsif answer == 3
    delete_item(item_list, item_to_be_deleted)
  elsif answer == 4
    bought(item_list, bought_item_index)
  elsif answer == 5
    search_by_article
  elsif answer == 6
   search_by_price
  end
  puts "\nWhat wou like to do?\n\n 1- Display the list\n 2- Add a new item\n 3- Delete an item\n 4- Mark an item as bougt \n 5-Idea from etsy by name \n 6-Idea from etsy by price\n 7- Exit\n\n"
  answer = gets.chomp.to_i
end






