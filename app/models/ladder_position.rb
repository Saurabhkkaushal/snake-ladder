class LadderPosition
  def initialize(args)
    start_pos = args[:position]
    end_pos = args[:final_pos]
    
    if(valid?(start_pos, end_pos))
      super(args)
    else
      puts "Wronng i/p"
    end

  end

  private

  def valid?(start, end_pos)
    end_pos > start
  end

end