require 'test/unit'
require './style_1'
require "./test_unit_extensions"

class TestInlineStyleParsing < Test::Unit::TestCase
 must "simply return the string if styles are not found" do
   @pdf = Prawn::Document.new
   assert_equal "Hello world", @pdf.parse_inline_styles("Hello World")
 end
end
