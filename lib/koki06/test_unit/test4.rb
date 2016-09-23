require 'test/unit'

def greeting(name)
  return "Hello, #{name}."
end

class Test_Sample < Test::Unit::TestCase
  def test_test()
    assert_equal("Hello, bob.",greeting("bob"))
    assert_equal("Hello, bob.",greeting("donkey"))
  end
end
