# test_sample2.rb
require 'test/unit'

class Sample
  def self.greeting
    'Hello, world!'
  end
end

class TestSample < Test::Unit::TestCase
  def test_greeting
    assert_equal 'ello, world!', Sample.greeting
  end
end
