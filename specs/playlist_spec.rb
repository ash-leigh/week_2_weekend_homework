require('minitest/autorun')
require_relative('../playlist')

class TestPlaylist < Minitest::Test

  def setup
    @song_1 = Song.new("Girls just want to have fun", "Cyndi Lauper", genre = ["Pop", "Dance", "New wave"], "70's")
  end
end