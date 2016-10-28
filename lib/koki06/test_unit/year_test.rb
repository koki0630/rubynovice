require 'test/unit'
require './year'


class Test_Year < Test::Unit::TestCase
  def test_year
    assert_equal("true",isLeapYear(8))
  end
end
