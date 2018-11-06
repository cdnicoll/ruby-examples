# https://stackoverflow.com/questions/34628349/what-is-use-of-begin-end-block-in-ruby

a = 123
b = 456
b = begin
  a = 789  # overwrites a
end

puts a: a, b: b #=> {:a=>789, :b=>789}

# ========================================================================

a = 123
b = 456
c = 789
b ||= begin
  # Noting actually happend becaise this will nullify the error
  a = c  # overwrites a
end

puts a: a, b: b #=> {:a=>nil, :b=>456}
