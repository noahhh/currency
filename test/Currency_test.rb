require "minitest/autorun"
require "Currency"

class CurrencyTest < MiniTest::Unit::TestCase
  def test_currency_has_amount_and_code
    currency = Currency.new(5, "USD")
    refute_nil currency
  end

  def test_different_currency_objects_equal_eachother
    amount = Currency.new(9, "EUR")
    different_amount = Currency.new(9, "EUR")
    assert_equal amount, different_amount
  end

  def test_add_currency_to_same_coded_currency
      amount1 = Currency.new(9, "EUR")
      amount2 = Currency.new(2, "EUR")
      result = amount1.value + amount2.value if
      amount1.code == amount2.code
      assert_equal 11, result
  end

  def test_subtract_currency_from_same_coded_currency
    amount1 = Currency.new(9, "EUR")
    amount2 = Currency.new(2, "EUR")
    if amount1.code == amount2.code
      result = amount1.value - amount2.value
      if result < 0
        raise "You can't have negative monies!"
      end
    end
    assert_equal 7, result
  end
end
