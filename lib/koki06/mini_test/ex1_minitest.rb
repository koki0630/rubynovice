require 'test/unit'

class Sample

  def self.ex1_1
    return "Hello, world!"
  end
  
  def self.ex1_2
    a = 2+1
    return a
  end

#  def self.ex1_3
    
#    expected = "ans=2\n"
#    return expected
    
#  end
end

class TestSample < Test::Unit::TestCase
  def test_ex1
    assert_equal 'hello, world!', Sample.ex1_1
  end
  
  def test_ex2
    assert_equal 2, Sample.ex1_2
  end
  
#  def test_ex3
#    assert_equal "ans=2\n", Sample.ex1_3
#  end
end
