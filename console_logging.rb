# ruby ~/Dropbox/Projects/ruby/ruby-snippet-examples/console_logging.rb

puts "puts can output text"
p "p Also outputs, however it prints the objects (such as arrays) and will print on the same line"


puts "------------------------------------------------"

# https://www.dotnetperls.com/console-ruby
value = 100
# Print values on separate lines.
# ... Parentheses are optional.
puts value
puts("FINISHED")
# Use << to append a string.
puts "VALUE " << String(value)
# Use + to append.
puts "VALUE " + String(value)
# Print all Array elements on separate lines.
elements = [10, 100, 1000]
puts elements
# Print all array elements on the same line
p elements
