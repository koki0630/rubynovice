require 'test/unit'
#require './greeting'


def greeting(name)
  return "Hello, #{name}."
end

class Test_Sample < Test::Unit::TestCase
  def test_greeting
    assert_equal("Hello, bob.",greeting("bob"))
    assert_equal("Hello, donkey.",greeting("donkey"))
  end
end
