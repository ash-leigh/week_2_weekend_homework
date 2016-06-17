require('minitest/autorun')
require_relative('../room')
require_relative('../playlist')
require_relative('../song')

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Room", 100, 10)
  end

  def test_room_has_name
    assert_equal("Room", @room.name)
  end

  def test_room_has_price
    assert_equal(100, @room.price)
  end

  def test_room_has_maximum_number_of_guests
    assert_equal(10, @room.maximum_capacity_of_room)
  end

end