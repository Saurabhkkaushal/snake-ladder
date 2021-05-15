class Dice
  @@range = nil

  def initialize(args = {})
    @@range = args[:range]
  end

  def roll_dice
    rand(1..@@range)
  end
end