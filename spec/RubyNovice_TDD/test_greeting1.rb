# -*- coding: utf-8 -*-
require 'test/unit'
require './greeting'

class Test_Sample < Test::Unit::TestCase
  def test_greeting
    assert_equal("Hello, bob.",あいさつ("bob"))
    assert_not_equal("Hello, bob.",あいさつ("donkey"))
  end
end
