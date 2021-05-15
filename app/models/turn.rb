class Turn
  attr_accessor :name_of_players, :size

  @@idx = 0

  def initialize(args)
    @name_of_players = args[:name_of_players]
    @size = args[:name_of_players].size
  end

  def turn
    @@idx += 1
    @@idx = @@idx % @size

    @name_of_players[@@idx]    
  end
  
end