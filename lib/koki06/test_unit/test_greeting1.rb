require 'test/unit'
require './greeting'

class Test_Sample < Test::Unit::TestCase
  must "test_greeting" do
    assert_equal("Hello, bob.",greeting("bob"))
    assert_not_equal("Hello, bob.",greeting("donkey"))
  end

  must "test_good_bye" do
    assert_equal("good bye,bob",good_bye("bob"))
  end
end
