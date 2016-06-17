require('minitest/autorun')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Ashleigh Adams", 50)
  end

  def test_guest_has_name
    assert_equal("Ashleigh Adams", @guest.name)
  end

  def test_guest_total_cash
    assert_equal(50, @guest.cash)
  end

end