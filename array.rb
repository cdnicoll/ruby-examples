foo = ["foo", "bar", "nax", "pax"]
puts foo[1]

puts foo.include?("jar")
puts foo.include?("foo")

puts ""
puts "Calling reverse will not mutate the array"
p foo.reverse
p foo
puts "However using a bang(!) will mutate the array"
p foo.reverse!
p foo

puts ""
# To convert to an array
p (1..15).to_a

puts ""
# random array of 0-100
y = (0..10).to_a.shuffle
p y
x = (0..10).to_a.shuffle!
p x

puts ""
puts "Append to array"
x = (1..10).to_a
x << 15
p x
x.push(20)
p x
x.unshift(-1)
p x

puts ""
for number in x
  puts number
end

puts ""
puts "using select works by giving it a boolean expression"
p x.select { |num| num.odd? }

puts "------------------------------------------------"

foo = %w[foobar1 foobar2].freeze
p foo
puts ""

# Looking into what Value equates to
foo.each do |key, value|
  puts "key: #{key} value: #{value}"
end
puts ""

# Value is never set, so it's not needed checking to see if using just a key works
foo.each do |key|
  puts "key: #{key}"
end


puts "------------------------------------------------"
# explodes a string
fruits = "apple, bannana, grapes, orange"
split_fruit = fruits.split(', ') # note to capture the space
puts split_fruit
