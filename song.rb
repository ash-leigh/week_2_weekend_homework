class Song
  attr_reader :name, :artist, :genre, :decade

  def initialize(name, artist, genre, decade)
    @name = name
    @artist = artist
    @genre = genre
    @decade = decade
  end

end