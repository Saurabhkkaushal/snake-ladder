class Turn
  attr_accessor :players_objs, :size

  @@idx = 0

  def initialize(args)
    @players_objs = args[:players_objs]
    @size = args[:players_objs].size
  end

  def turn
    @@idx += 1
    @@idx = @@idx % @size

    @players_objs[@@idx]    
  end
  
end