class Player < User
	attr_accessor :game_id
  attr_reader :position

  def initialize(args = {})
    super(args)
    game_id = args[:game_id]
    @position = 0
  end

  def update_pos(output)
    updated_pos = @position + output
    return unless valid?(updated_pos)

    updated_pos, flag = SnakePositionFactory.get_final_pos(updated_pos)
      
    updated_pos, flag = LadderPositionFactory.get_final_pos(updated_pos) unless flag

    @position = updated_pos
  end

  def won?
    @position == Ladder.size
  end

  def roll
    Dice.new.roll_dice
  end
  
end