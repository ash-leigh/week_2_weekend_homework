class Venue

  def initialize(rooms, bar)
    @rooms = rooms
    @bar = bar
    @venue_takings = 0
  end

  def number_of_rooms
    @rooms.count()
  end

end