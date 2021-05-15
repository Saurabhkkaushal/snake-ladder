class LadderPositionFactory < PositionFactory

  @@ladder_info = []

  def add(args)
    @@ladder_info << Ladder.new(args)
  end

   def class_var
    @@ladder_info 
  end
  
end