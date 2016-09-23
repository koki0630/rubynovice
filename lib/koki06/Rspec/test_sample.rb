
require 'test/unit'

class Sample
  def self.greeting
    'Hello, world!'
  end
end

class TestSample < Test::Unit::TestCase
  def test_greeting
    assert_equal 'Hello, world!', Sample.greeting
  end


  def test_calc
    assert_equal 4, (2 + 2)
    assert_equal 1, (2 - 1)
    assert_equal 6, (2 * 3)
    assert_equal 3, (9 / 3)
  end
end
