require('minitest/autorun')
require_relative('../playlist')
require_relative('../song')


class TestPlayList < Minitest::Test

  def setup
    song_1 = Song.new("girls just want to have fun", "cyndi lauper", genre = ["pop", "dance", "new wave"], "70's")
    song_2 = Song.new("stairway to heaven", "led zeppelin", genre = ["folk", "rock", "heavy metal"], "70's")
    song_3 = Song.new("bohemian rhapsody", "queen", genre = ["rock", "heavy metal"], "70's")
    song_4 = Song.new("hotel california", "eagles", genre = ["rock"], "70's")
    song_5 = Song.new("imagine", "john lennon", genre = ["pop", "rock"], "70's")
    song_6 = Song.new("wish you were here", "pink floyd", genre = ["rock"], "70's")
    song_7 = Song.new("free bird", "lynyrd skynyrd", genre = ["rock"], "70's")
    song_8 = Song.new("dancing queen", "abba", genre = ["pop", "disco"], "70's")
    song_9 = Song.new("iron Man", "black sabbath", genre = ["heavy metal"], "70's")
    song_10 = Song.new("baba o'riley", "the who", genre = ["Rock"], "70's")
    song_11 = Song.new("billie jean", "micheal jackson", genre = ["pop", "funk", "dance"], "80's")
    song_12 = Song.new("beat it", "michael jackson", genre = ["rock", "dance"], "80's")
    song_13 = Song.new("come on eileen", "dexy midnight runners", genre = ["new wave", "folk", "pop", "soul"], "80's")
    song_14 = Song.new("take on me", "a-ha", genre = ["pop", "new wave"], "80's")
    song_15 = Song.new("livin' on a prayer", "bon jovi", genre = ["rock", "glam metal"], "80's")
    song_16 = Song.new("i wanna dance with somebody", "whitney houston", genre = ["dance", "pop"], "80's")
    song_17 = Song.new("when doves cry", "prince", genre = ["pop", "dance", "new wave", "r&b"], "80's")
    song_18 = Song.new("sweet dreams", "eurythmics", genre = ["pop", "new wave"], "80's")
    song_19 = Song.new("like a virgin", "madonna", genre = ["dance", "pop"], "80's")
    song_20 = Song.new("jessie's girl", "rick springfield", genre = ["pop"], "80's")


    songs = [song_1, song_2, song_3, song_4, song_5, song_6, song_7, song_8, song_9, song_10, song_11, song_12, song_13, song_14, song_15, song_16, song_17, song_18, song_19, song_20]

    @library = PlayList.new(songs)
  end

  def test_how_many_songs_are_in_library
    assert_equal(20, @library.number_of_songs_in_library)
  end

  def test_filter_song_by_name
    songs = @library.filter_song_by_name("girls just want to have fun")
    assert_equal(1, songs.count)
  end

  def test_filter_song_by_artist
    songs = @library.filter_song_by_artist("cyndi lauper")
    assert_equal(1, songs.count)
  end

  def test_filter_song_by_decade
    songs = @library.filter_song_by_decade("70's")
    assert_equal(10, songs.count)
  end

  def test_filter_songs_by_genre
    songs = @library.filter_song_by_genre("pop")
    assert_equal(11, songs.count)
  end


end










