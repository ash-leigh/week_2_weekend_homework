class Venue

  def initialize(rooms, library, menu)
    @rooms = rooms
    @library = library
    @menu = menu
    @venue_takings = 0
  end

  def number_of_rooms
    @rooms.count()
  end

  def display_rooms
    rooms_to_display = []
    for room in @rooms
      rooms_to_display << room
    end
      for room in rooms_to_display
      puts "\n"
      puts room.name
      puts "£ #{room.price.to_f}"
      puts "\n"
      puts room.maximum_capacity_of_room
    end
  end

  def number_of_songs_in_library
    @library.count()
  end

  def filter_song_by_name(name)
    song_name = @library.select {|song| song.name == name}
    songs = song_name.map {|song| song}
    return songs
  end

  def filter_song_by_artist(artist)
    song_artist = @library.select {|song| song.artist == artist}
    songs = song_artist.map {|song| song}
    return songs
  end

  def filter_song_by_decade(decade)
    decade_songs = @library.select {|song| song.decade == decade}
    songs = decade_songs.map {|song| song}
    return songs
  end

  def filter_song_by_genre(genre)
    songs_genre = @library.select {|song| song.genre.include?(genre)}
    songs = songs_genre.map {|song| song}
    return songs
  end

  def number_of_items_on_menu
    @menu.count()
  end

  def filter_refreshments_by_type(type)
    refreshment_type = @menu.select {|refreshment| refreshment.type == type}
    options = refreshment_type.map {|refreshment| refreshment}
    return options
  end

  def filter_refreshments_by_name(name)
    refreshment_name = @menu.select {|refreshment| refreshment.name == name}
    options = refreshment_name.map {|refreshment| refreshment}
    return options
  end

  def filter_refreshments_by_price(cash)
    refreshment_price = @menu.select {|refreshment| refreshment.price <= cash}
    options = refreshment_price.map {|refreshment| refreshment}
    return options
  end



end
