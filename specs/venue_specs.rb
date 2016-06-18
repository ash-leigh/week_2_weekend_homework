require('minitest/autorun')
require_relative('../venue')
require_relative('../room')
require_relative('../guest')

class TestVenue < Minitest::Test

  def setup
    @guest = Guest.new("Ashleigh Adams", 150)

    room_1 = Room.new("King Tuts Wah Wah Hut", 100, 10)
    room_2 = Room.new("Barrowland", 50, 5)
    room_3 = Room.new("The Caves", 20, 2)

    rooms = [room_1, room_2, room_3]

    @venue = Venue.new(rooms)
  end

  def test_number_of_rooms_in_venue
    assert_equal(3, @venue.number_of_rooms)
  end

end