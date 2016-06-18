class Room
  attr_reader :name, :price, :maximum_capacity_of_room, :room_playlist

  def initialize(name, price, maximum_capacity_of_room)
    @name = name
    @price = price
    @maximum_capacity_of_room = maximum_capacity_of_room
    @room_playlist = []
  end

  def number_of_songs_in_room_playlist
    @room_playlist.count
  end

  def add_to_room_playlist(song)
    songs_to_add = song
    for selection in songs_to_add 
      @room_playlist << selection
    end
  end
  

end