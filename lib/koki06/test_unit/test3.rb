def assert_equal(expected, actual)
  if expected==actual
    return true 
  else
    return false
  end
end

def greeting(name)
  return "Hello, #{name}."
end

p assert_equal("Hello, bob.",greeting("bob"))
p assert_equal("Hello, bob.",greeting("donkey"))
