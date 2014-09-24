class Currency
  include Comparable
  attr_reader :value, :code
  def initialize(value, code)
    @value = value
    @code = code
  end

  def <=>(item_to_compare)
    if @code == item_to_compare.code
    @value <=> item_to_compare.value
  else
    return nil
    end
  end

  def add_currency(*item_to_add)
    if @code == item_to_add.code
    @value += item_to_add.value
  else
    return nil
    end
  end
end
