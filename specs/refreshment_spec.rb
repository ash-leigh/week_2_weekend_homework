require('minitest/autorun')
require_relative('../refreshment')

class TestRefreshment < Minitest::Test

  def setup
    @refreshment = Refreshment.new("drink", "beer", 4)
  end

  def test_song_has_type
    assert_equal("drink", @refreshment.type)
  end

  def test_song_has_artist
    assert_equal("beer", @refreshment.name)
  end

  def test_song_has_price
    assert_equal(4, @refreshment.price)
  end

end