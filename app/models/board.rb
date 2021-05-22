class Board
  attr_accessor :size

  def initialize(args = {})
    @size = args[:size]
  end

  def valid?(pos)
    pos <= @size
  end
end