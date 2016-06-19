#not finished and major refactoring required. You may want to aviod for fear of growing a desire to throw me off course :)
require_relative('venue')
require_relative('room')
require_relative('refreshment')
require_relative('guest')
require_relative('song')

class Viewer

  def initialize
    @guest = Guest.new("Ashleigh", 150, 10)

    room_1 = Room.new("King Tuts Wah Wah Hut", 100, 10)
    room_2 = Room.new("Barrowland", 50, 5)
    room_3 = Room.new("The Caves", 20, 2)

    rooms = [room_1, room_2, room_3]

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

    library = [song_1, song_2, song_3, song_4, song_5, song_6, song_7, song_8, song_9, song_10, song_11, song_12, song_13, song_14, song_15, song_16, song_17, song_18, song_19, song_20, song_21, song_22, song_23, song_24, song_25, song_26, song_27, song_28, song_29, song_30]

    refreshment_1 = Refreshment.new("drink", "beer", 4)
    refreshment_2 = Refreshment.new("drink", "wine", 5)
    refreshment_3 = Refreshment.new("drink", "cocktail", 4)
    refreshment_4 = Refreshment.new("drink", "pitcher", 10)
    refreshment_5 = Refreshment.new("drink", "spirit", 5)
    refreshment_6 = Refreshment.new("drink", "fizzy juice", 3)
    refreshment_7 = Refreshment.new("snack", "popcorn", 4)
    refreshment_8 = Refreshment.new("snack", "chicken wings", 4)
    refreshment_9 = Refreshment.new("snack", "chips", 2)
    refreshment_10 = Refreshment.new("snack", "ice-cream", 3)

    menu = [refreshment_1, refreshment_2, refreshment_3, refreshment_4, refreshment_5, refreshment_6, refreshment_7, refreshment_8, refreshment_9, refreshment_10]

    @venue = Venue.new(rooms, library, menu)
  end

  def start
    puts "Welcome to CodeClan karaoke!"
    puts "What is you name?"
    name = gets.chomp
    puts "Well, #{name} are you ready to sing your heart out?"
    answer = gets.chomp.downcase
    if answer == "yes"
      puts "Right then lets get you a room. Please see the rooms we have available;"
      display_rooms
    elsif answer == "no"
      "What in the name of the wee man are you doing in a karaoke club then?!?!?! GET OUT."
    else
      "That was a yes or no question, don't know what you're talking about."
    end
    puts "Which room would you like?"
    room_choice = gets.chomp
    @venue.pick_room(room_choice)
    puts "Great, we'll pop you into the #{room_choice} room."
    search_and_add_songs
  end

  def display_rooms
    rooms = @venue.display_rooms
    for room in rooms
        puts "\n"
        puts room.name
        puts "£#{room.price}" 
        puts "Room capacity: #{room.maximum_capacity_of_room}"
        puts "\n"
    end
  end

  def search_and_add_songs
    puts "You can add some songs that will be ready for you in the room. You can search by name, artist, decade or genre - which of these would you like to search by?"
    search_choice = gets.chomp.downcase
    if search_choice == "name"
      search_and_add_song_by_name
    elsif search_choice == "artist"
      search_and_add_song_by_artist
    elsif search_choice == "decade"
      search_and_add_song_by_decade
    elsif search_choice == "genre"
      search_and_add_song_by_genre
    else
      "We're not Google, you can't just search using anything you please."
    end
  end

  def search_and_add_song_by_name
    puts "What song you looking for?"
    song_name = gets.chomp
    return song_name
    song = @venue.filter_song_by_name(song_name)
    @venue.add_to_room_playlist(song)
  end

  def search_and_add_song_by_artist
    puts "What artist you looking for?"
    artist_name = gets.chomp
    return artist_name
    song = @venue.filter_song_by_artist(artist_name)
    @venue.add_to_room_playlist(song)
  end

  def search_and_add_song_by_decade
    puts "What decade are you looking for?"
    decade = gets.chomp
    return decade
    songs = @venue.filter_song_by_decade(decade)
    @venue.add_to_room_playlist(songs)
  end

  def search_and_add_song_by_genre
    puts "What genre you looking for?"
    genre = gets.chomp
    return decade
    songs = @venue.filter_song_by_genre(genre)
    @venue.add_to_room_playlist(songs)
  end

end

viewer = Viewer.new
viewer.start()
