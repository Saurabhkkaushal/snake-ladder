class SnakePositionFactory
  @@snakes_info = []

  def add(args)
    @@snakes_info << SnakePosition.new(args)
  end

  def class_var
    @@snakes_info 
  end
end