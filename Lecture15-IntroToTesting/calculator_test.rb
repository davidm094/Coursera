require 'minitest/autorun'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
  def setup
  	@calc = Calculator.new('test')
  end
  def test_addition
  	assert_equal 8, @calc.add(4,4)
  end
  def test_substraction
  	assert_equal 8, @calc.substration(12,4)
  end

  def test_divide_by_zero
    assert_raise ZeroDivisionError do 
      @calc.divide(1, 0)
    end
  end
end