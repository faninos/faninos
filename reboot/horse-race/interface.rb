require_relative "horse_race"
beted_horse = []

print "Welcome darling be ready to bet on the roght horses\nPlesae enter the first horse\n"

beted_horse << gets.chomp.to_i
print "Now please enter the second horse\n"
beted_horse << gets.chomp.to_i
print "Now please enter the thrid horse\n"
beted_horse << gets.chomp.to_i

race(beted_horse)





