# Hash stores in a key value pair
my_details = { 'name' => 'Cody', 'age'=>33 }
puts my_details['name']

# Allow the keys to by symbols
my_hash = { a:1, b:2, c:3 }
puts my_hash[:b]


# Add item to hash
my_hash[:d] = 4
p my_hash

# To remove
my_hash.delete(:d);
p my_hash

puts ""
# Interate over a hash
my_hash.each { |key, value| puts "k: #{key} v: #{value}"}

puts ""
# Delete any value over one
my_hash.each { |k, v| my_hash.delete(k) if v > 1 }
p my_hash

puts ""
my_hash = { a:1, b:2, c:3, d:4, e:5, f:6}
# Show only odd numbers
p my_hash.select{ |k, v| v.odd? }
p my_hash
# modify hash to only keep odd numbers
my_hash.select!{ |k, v| v.odd? }
p my_hash
