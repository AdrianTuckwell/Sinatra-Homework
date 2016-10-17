require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/wordformatter'

class TestCalculator < MiniTest::Test

  def setup
    @wordformatter1 = WordFormatter.new("e13 zqf")
    @wordformatter2 = WordFormatter.new("code clan")
  end

  #---test the upcase method -------------------
  def test_upcase()
    assert_equal("E13 ZQF", @wordformatter1.upcase)
  end

  def test_camel_case()
    assert_equal("CodeClan", @wordformatter2.camel_case)
  end

end