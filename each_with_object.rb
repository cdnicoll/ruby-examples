# ruby ~/Dropbox/Projects/ruby/ruby-snippet-examples/each_with_object.rb

# https://apidock.com/rails/Enumerable/each_with_object


# http://ruby-doc.org/core-2.0.0/Enumerable.html#method-i-each_with_object
evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
p evens

evens2 = (1..10).each_with_object([]) do |i, a|
  a << i*2
end

p evens2

puts "------------------------------------------------"

# https://stackoverflow.com/a/19064432
(1..3).each_with_object(0) do |e,mem|
  puts "#{mem} and #{e} before change"
  mem = mem + e
  puts mem
end


puts "------------------------------------------------"

KINDS = %w[not_null eq cont null not_eq not_cont lt gt lteq gteq]

k = KINDS.each_with_object({}) do |filter_kind, all_filters|
  all_filters[filter_kind] = filter_kind+"_foobar"
end

p k

