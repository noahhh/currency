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
end
