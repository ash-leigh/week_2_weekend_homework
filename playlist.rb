class PlayList

  attr_reader :filter_song_by_name, :filter_song_by_artist, :filter_song_by_decade, :filter_song_by_genre

  def initialize(library)
    @library = library

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

end