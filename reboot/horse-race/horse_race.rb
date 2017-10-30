


def race(beted_horse)

result = (1..5).to_a.shuffle

  if result.[0..2] == beted_horse
    print "the result is #{result} your bet was #{beted_horse} you win "
  else
    print "the result is #{result} your bet was #{beted_horse} you lose"
  end
end

