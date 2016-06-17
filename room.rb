class Room
  attr_reader :name, :price, :maximum_capacity_of_room

  def initialize(name, price, maximum_capacity_of_room)
    @name = name
    @price = price
    @maximum_capacity_of_room = maximum_capacity_of_room
  end

  

end