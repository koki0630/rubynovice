require 'test/unit'
require './greeting'

class Test_Sample < Test::Unit::TestCase
  def test_greeting
    assert_equal("Hello, bob.",greeting("bob"))
    assert_not_equal("Hello, bob.",greeting("donkey"))
  end

  def test_good_bye
    assert_equal("good bye,bob",good_bye("bob"))
  end
end
