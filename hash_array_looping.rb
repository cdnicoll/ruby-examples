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

puts "\n------------------------------------------------\n"
# get only unique values from a multi-di hash

FILTER_TYPES  = {
  text: [
    {text: "contains", value: "cont"},
    {text: "does not contain", value: "not_cont"},
    {text: "is", value: "cont_all"},
    {text: "is not", value: "not_cont_all"},
    {text: "begins with", value: "start"},
    {text: "ends with", value: "end"},
    {text: "in", value: "in"}
  ],
  date: [
    {text: "is", value: "cont_all"},
    {text: "is not", value: "not_cont_all"},
    #{text: "is after", value: ""},
    #{text: "is before", value: ""},
    # {text: "in the last", value: ""} # this will need an additional filter (days, months, years)
    # {text: "not in the last", value: ""} # this will need an additional filter (days, months, years)
    #"is in the range" # (note this will need to add an additional filter input field)
  ],
  int: [
    {text: "is", value: "cont_all"},
    {text: "is not", value: "not_cont_all"},
    {text: "is greater than", value: "gt"},
    {text: "is less than", value: "lt"}
    #"is in the range" // (note this will need to add an additional filter input field)
  ],
  bool: [
    {text: "is true",  value: "true"},
    {text: "is false", value: "false"},
    {text: "is blank", value: "blank"}
  ]
}

#puts FILTER_TYPES.collect{|k,v| puts v}
#p FILTER_TYPES.reverse.map{|x| x[0]}
#p FILTER_TYPES.map.with_object({}) {|k,v| v[k[0]] = k }.values
FILTER_TYPES.map.with_object({}) do |k,v|
  #p k[k[0]]
  #p v[]
end

#p FILTER_TYPES[:text].flatten

FILTER_TYPES.each_with_index do |k,v|
  p FILTER_TYPES[k[v]]

end

all_filters = []
FILTER_TYPES.each do |key,value|
  value.each do |k, v|
    all_filters.push(k[:value])
  end
end

p all_filters.uniq!

