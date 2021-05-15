class Move
  attr_accessor :player, :output

  def initialize(args)
    @player = args[:player]
    @output = args[:output]
  end

  def record_move
    @player.update_pos(@output)
    # log
  end

end