require 'runit/assert'
include RUNIT::Assert #OK only 1.8.7?

=begin #own assert_equal
def assert_equal(expected, actual)
  if expected==actual
    return true 
  else
    return false
  end
end
=end
puts "Hello world."
p "Hello world."
print "Hello world.\n"
printf("Hello world.\n")

def greeting(name)
#  return "Hello, "+name+"."
  return "Hello, #{name}."
#  return 'Hello, #{name}.'
end

puts "Hello, bob."
#puts greeting('bob')
puts greeting("bob")

assert_equal("Hello, bob.",greeting("bob"))
assert_equal("Hello, bob.",greeting("bob."))
