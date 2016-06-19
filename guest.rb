class Guest
  attr_reader :name, :cash, :party_size

  def initialize(name, cash, party_size)
    @name = name
    @cash = cash
    @party_size = party_size
  end
  
end