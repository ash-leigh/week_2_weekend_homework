class Venue

  def initialize(rooms, bar)
    @venue = rooms
    @bar = bar
  end

  def number_of_rooms
    @venue.count()
  end

end