require('minitest/autorun')
require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("girls just want to have fun", "cyndi lauper", genre = ["pop", "dance", "new wave"], "70's")
  end

  def test_song_has_name
    assert_equal("girls just want to have fun", @song.name)
  end

  def test_song_has_artist
    assert_equal("cyndi lauper", @song.artist)
  end

  def test_song_has_genre
    assert_equal(["pop", "dance", "new wave"], @song.genre)
  end

  def test_song_has_decade
    assert_equal("70's", @song.decade)
  end

end