require 'test/unit'
require './greeting'

class Test_Sample < Test::Unit::TestCase
  def test_greeting
    assert_equal("Hello, bob.",greeting("bob"))
    assert_equal("Hello, bob.",greeting("donkey"))
  end
end
