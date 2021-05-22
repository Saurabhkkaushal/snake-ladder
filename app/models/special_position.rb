class SpecialPosition
  attr_accessor :position, :final_pos

  def initialize(args)
    @position = args[:position]
    @final_pos = args[:final_pos]
  end

end