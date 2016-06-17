require('minitest/autorun')
require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("Girls just want to have fun", "Cyndi Lauper", genre = ["Pop", "Dance", "New wave"], "70's")
  end

  def test_song_has_name
    assert_equal("Girls just want to have fun", @song.name)
  end

  def test_song_has_artist
    assert_equal("Cyndi Lauper", @song.artist)
  end

  def test_song_has_genre
    assert_equal(["Pop", "Dance", "New wave"], @song.genre)
  end

  def test_song_has_decade
    assert_equal("70's", @song.decade)
  end

end