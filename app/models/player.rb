class Player < User
	attr_accessor :game_id
  attr_reader :position

  def initialize(args = {})
    super(args)
    game_id = args[:game_id]
    @position = 0
  end

  def update_pos(output, board)
    updated_pos = @position + output
    return unless board.valid?(updated_pos)

    updated_pos = PositionFactory.new.get_final_pos(updated_pos)

    @position = updated_pos
  end

  def won?(board)
    @position == board.size
  end

  def roll(dice)
    
    output = dice.roll_dice
    total = output
    count = 0
    while(output == 6 && count < 3)
      output = dice.roll_dice
      total += output
      count += 0
    end

    puts "O/p > 6 #{total}" if total > 6
    total >= 18 ? 0 : total
  end
  
end