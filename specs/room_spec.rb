require('minitest/autorun')
require_relative('../room')
require_relative('../playlist')
require_relative('../song')

class TestRoom < Minitest::Test

  def setup
    
    @room = Room.new("Room", 100, 10)

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
    song_21 = Song.new("smells like teen spirit", "nirvana", genre = ["grunge", "alternative", "rock"], "90's")
    song_22 = Song.new("wonderwall", "oasis", genre = ["pop"], "90's")
    song_23 = Song.new("losing my religion", "rem", genre = ["alternative", "rock", "folk"], "90's")
    song_24 = Song.new("baby one more time", "britney spears", genre = ["pop", "dance"], "90's")
    song_25 = Song.new("killing in the name", "rage against the machine", genre = ["rap", "metal"], "90's")
    song_26 = Song.new("ice ice baby", "vanilla ice", genre = ["hip hop"], "90's")
    song_27 = Song.new("spice up your life", "spice girls", genre = ["pop", "dance"], "90's")
    song_28 = Song.new("mmmbop", "hanson", genre = ["pop"], "90's")
    song_29 = Song.new("u can't touch this", "mc hammer", genre = ["pop", "rap"], "90's")
    song_30 = Song.new("waterfalls", "tlc", genre = ["pop", "r&b", "hip hop"], "90's")


    songs = [song_1, song_2, song_3, song_4, song_5, song_6, song_7, song_8, song_9, song_10, song_11, song_12, song_13, song_14, song_15, song_16, song_17, song_18, song_19, song_20, song_21, song_22, song_23, song_24, song_25, song_26, song_27, song_28, song_29, song_30]

    @library = PlayList.new(songs)
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

  def test_number_of_songs_in_room_playlist
    assert_equal(0, @room.number_of_songs_in_room_playlist)
  end

  def test_add_to_room_playlist__single_song_by_name
    @room.add_to_room_playlist(@library.filter_song_by_name("girls just want to have fun"))
    assert_equal(1, @room.number_of_songs_in_room_playlist)
  end

  def test_add_to_room_playlist__single_song_by_artist
    @room.add_to_room_playlist(@library.filter_song_by_artist("cyndi lauper"))
    assert_equal(1, @room.number_of_songs_in_room_playlist)
  end

  def test_add_song_to_room_playlist__all_decade_songs
    @room.add_to_room_playlist(@library.filter_song_by_decade("70's"))
    assert_equal(10, @room.number_of_songs_in_room_playlist)
  end

  def test_add_song_to_room_playlist__all_genre_songs
    @room.add_to_room_playlist(@library.filter_song_by_genre("pop"))
    assert_equal(17, @room.number_of_songs_in_room_playlist)
  end




end