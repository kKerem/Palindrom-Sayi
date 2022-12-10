# frozen_string_literal: true

def reverse(number) # sayının tersini bulma
  reverse_number = 0
    while number != 0
      reverse_number = (number%10) + (reverse_number*10)
      number = number/10
    end
  return reverse_number
end
    
number, depth = gets.chomp.split.map(&:to_i)

i, x=0, number
while i != depth
  x = x + reverse(x)
  if x == reverse(x)
    break
  end
  i+=1
end

if reverse(x) == x
  puts "palindrom"
else
  puts "ozelsayi"
end
