require "minitest/autorun"
require "Currency"

class CurrencyTest < MiniTest::Unit::TestCase
  def test_currency_has_amount_and_code
    currency = Currency.new(5, "USD")
    refute_nil currency
  end

  # def test_different_currencies_equal_eachother
  #
  # end
end
