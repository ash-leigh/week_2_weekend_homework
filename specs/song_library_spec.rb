require('minitest/autorun')
require_relative('../song_library')
require_relative('../song')


class TestSongLibrary < Minitest::Test

  def setup
    song_1 = Song.new("Girls just want to have fun", "Cyndi Lauper", genre = ["Pop", "Dance", "New wave"], "70's")
    song_2 = Song.new("Stairway to heaven", "Led Zeppelin", genre = ["Folk", "Rock", "Heavy metal"], "70's")
    song_3 = Song.new("Bohemian Rhapsody", "Queen", genre = ["Rock", "Heavy metal"], "70's")
    song_4 = Song.new("Hotel California", "Eagles", genre = ["Rock"], "70's")
    song_5 = Song.new("Imagine", "John Lennon", genre = ["Pop", "Rock"], "70's")
    song_6 = Song.new("Wish you were here", "Pink Floyd", genre = ["Rock"], "70's")
    song_7 = Song.new("Free Bird", "Lynyrd Skynyrd", genre = ["Rock"], "70's")
    song_8 = Song.new("Dancing Queen", "Abba", genre = ["Pop", "Disco"], "70's")
    song_9 = Song.new("Iron Man", "Black Sabbath", genre = ["Heavy metal"], "70's")
    song_10 = Song.new("Baba O'Riley", "The Who", genre = ["Rock"], "70's")

    songs = [song_1, song_2, song_3, song_4, song_5, song_6, song_7, song_8, song_9, song_10]

    @playlist = SongLibrary.new(songs)
  end

end