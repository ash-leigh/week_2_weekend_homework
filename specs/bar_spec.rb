require('minitest/autorun')
require_relative('../bar')
require_relative('../refreshment')


class TestBar < Minitest::Test

  def setup
    refreshment_1 = Refreshment.new("drink", "beer", 4)
    refreshment_2 = Refreshment.new("drink", "wine", 5)
    refreshment_3 = Refreshment.new("drink", "cocktail", 4)
    refreshment_4 = Refreshment.new("drink", "pitcher", 10)
    refreshment_5 = Refreshment.new("drink", "spirit", 5)
    refreshment_6 = Refreshment.new("drink", "fizzy juice", 3)
    refreshment_7 = Refreshment.new("snack", "popcorn", 4)
    refreshment_8 = Refreshment.new("snack", "chicken wings", 4)
    refreshment_9 = Refreshment.new("snack", "chips", 2)
    refreshment_10 = Refreshment.new("snack", "ice-cream", 3)

    menu = [refreshment_1, refreshment_2, refreshment_3, refreshment_4, refreshment_5, refreshment_6, refreshment_7, refreshment_8, refreshment_9, refreshment_10]

    @bar = Bar.new(menu)
  end

  def test_how_many_refreshments_are_in_bar
    assert_equal(10, @bar.number_of_items_on_menu)
  end

  def test_filter_refreshment_by_type
    items = @bar.filter_refreshments_by_type("drink")
    assert_equal(6, items.count)
  end

  def test_filter_refreshment_by_name
    items = @bar.filter_refreshments_by_name("beer")
    assert_equal(1, items.count)
  end

  def test_filter_refreshment_by_price
    items = @bar.filter_refreshments_by_price(3)
    assert_equal(3, items.count)
  end

end