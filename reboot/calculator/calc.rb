
def calc (first_number, second_number, operator)

total = 0
  if operator == "+"
    return first_number + second_number
  elsif operator == "-"
    return first_number - second_number
  elsif operator == "*"
    return first_number * second_number
  else operator == "/"
    return first_number / second_number
  end
end
