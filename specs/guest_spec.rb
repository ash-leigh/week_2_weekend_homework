require('minitest/autorun')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Ashleigh Adams", 150, 10)
  end

  def test_guest_has_name
    assert_equal("Ashleigh Adams", @guest.name)
  end

  def test_guest_total_cash
    assert_equal(150, @guest.cash)
  end

end