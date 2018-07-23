# ruby ~/Dropbox/Projects/ruby/ruby-snippet-examples/hash_array_looping.rb

# Hash https://ruby-doc.org/core-2.5.1/Hash.html
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
p grades
# to access
puts grades["Jim Doe"]

# alternate syntax for eys that are symbols
options = { :font_size => 10, :font_family => "Arial" }
# could also be written as:
options = { font_size: 10, font_family: "Arial" }
p options
# To access
puts options[:font_size]

# Hashes can also be created using the new method
grades = Hash.new
grades["Dorothy Doe"] = 9
p grades

# Hashes are an easy way to represent data structures
books = {}
books[:matz]  = "The Ruby Programming Language"
books[:black] = "The Well-Grounded Rubyist"
p books

puts "------------------------------------------------"

# ----- HASH LOOPING -----
business = { "name" => "Treehouse", "location" => "Portland, OR" }
business.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

# Iterate over keys only
business.each_key do |key|
  puts "Key: #{key}"
end

# Iterate over values only
business.each_value do |value|
  puts "Value: #{value}"
end

puts "------------------------------------------------"

## More complex example
cars = {}
# cars["volvo"] = {name: "Volvo", stock: 22, sold: 18}
# cars["bmw"] = {name: "BMW", stock: 15, sold: 13}
# cars["saab"] = {name: "SAAB", stock: 5, sold: 2}
# cars["land_rover"] = {name: "Land Rover", stock: 17, sold: 15}

cars = {
  "volvo" => { name: "Volvo", stock: 22, sold: 18 },
  "bmw" => { name: "BMW", stock: 15, sold: 13 },
  "saab" => { name: "SAAB", stock: 5, sold: 2 },
  "land_rover" => { name: "Land Rover", stock: 17, sold: 15 }
}

p cars

cars.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

cars.each do |key, values|
  puts "the key is #{key}"
  values.each do |k, v|
    puts "the value key is ** #{k} ** and each value is ** #{v} **"
  end
end


puts "------------------------------------------------"

FOO = %w[foobar1 foobar2].freeze
p FOO

# Looking into what Value equates to
FOO.each do |key, value|
  puts "key: #{key} value: #{value}"
end

# Value is never set, so it's not needed checking to see if using just a key works
FOO.each do |key|
  puts "key: #{key}"
end
