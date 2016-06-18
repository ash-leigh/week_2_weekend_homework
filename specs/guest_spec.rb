require('minitest/autorun')
require_relative('../guest')
require_relative('../venue')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Ashleigh Adams", 150)

    room_1 = Room.new("King Tuts Wah Wah Hut", 100, 10)
    room_2 = Room.new("Barrowland", 50, 5)
    room_3 = Room.new("The Caves", 20, 2)

    rooms = [room_1, room_2, room_3]

    @venue = Venue.new(rooms)
  end

  def test_guest_has_name
    assert_equal("Ashleigh Adams", @guest.name)
  end

  def test_guest_total_cash
    assert_equal(50, @guest.cash)
  end

end