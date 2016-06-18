class Room
  attr_reader :name, :price, :maximum_capacity_of_room, :room_playlist, :room_guests, :room_refreshments, :room_tab

  def initialize(name, price, maximum_capacity_of_room)
    @name = name
    @price = price
    @maximum_capacity_of_room = maximum_capacity_of_room
    @room_playlist = []
    @room_guests = []
    @room_refreshments = []
    @room_tab = 0
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
     @room_guests << guest if @room_guests.count < @maximum_capacity_of_room
  end

  def remove_guest_from_room(leaving_guest)
    @room_guests.delete_if {|guest| guest == leaving_guest}
  end

  def add_refreshment_to_room(refreshment)
    refreshment_to_add = refreshment
    for selection in refreshment_to_add 
      @room_refreshments << selection
    end
  end

  def add_refreshment_cost_to_room_tab(refreshment_cost)
    @room_tab += refreshment_cost
  end


end
