require('minitest/autorun')
require_relative('../venue')
require_relative('../room')
require_relative('../song')
require_relative('../guest')
require_relative('../refreshment')


class TestRoom < Minitest::Test

  def setup
    @room = Room.new("King Tuts Wah Wah Hut", 100, 10)
  end

  def test_room_has_name
    assert_equal("King Tuts Wah Wah Hut", @room.name)
  end

  def test_room_has_price
    assert_equal(100, @room.price)
  end

  def test_room_has_maximum_number_of_guests
    assert_equal(10, @room.maximum_capacity_of_room)
  end

  def test_number_of_songs_in_room_playlist
    assert_equal(0, @room.number_of_songs_in_room_playlist)
  end

  def test_number_of_guests_in_room
    assert_equal(0, @room.number_of_guests_in_room)
  end

  def test_add_guest_to_room
   @room.add_guest_to_room(@guest)
   assert_equal(1, @room.number_of_guests_in_room)
  end

  def test_remove_guest_from_room
   @room.remove_guest_from_room(@guest)
   assert_equal(0, @room.number_of_guests_in_room)
  end

  def test_total_of_room_tab
    assert_equal(0, @room.room_tab)
  end


end