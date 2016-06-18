class Room
  attr_reader :name, :price, :maximum_capacity_of_room, :room_playlist, :room_guests

  def initialize(name, price, maximum_capacity_of_room)
    @name = name
    @price = price
    @maximum_capacity_of_room = maximum_capacity_of_room
    @room_playlist = []
    @room_guests = []
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

  def number_of_guests_in_room
    @room_guests.count
  end

  def add_guest_to_room(guest)
     @room_guests << guest
  end

  def remove_guest_from_room(leaving_guest)
    @room_guests.delete_if {|guest| guest == leaving_guest}
  end


end
