puts "Testing if statement"

x = 1
if x == 1
  puts "x is 1"
end

puts "------------------------------------------------\n"

x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end

puts "------------------------------------------------\n"

str = "in"
if str == "in"
  puts "it equals in"
elsif
  puts "it is not equal to in"
end

if str.eql? "in"
  puts "it equals in"
elsif
  puts "it is not equal to in"
end
