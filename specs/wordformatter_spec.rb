require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/wordformatter'

class TestCalculator < MiniTest::Test

  def setup
    @wordformatter = WordFormatter.new("e13 zqf")
  end

  #---test the upcase method -------------------
  def test_upcase()
    assert_equal("E13 ZQF", @wordformatter.upcase
  end



end