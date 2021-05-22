class PositionFactory

  def add(type, position, final_position)
    type.constantize.new.add(
      position: position, final_pos: final_position
    )
  end

  def get_final_pos(for_pos)
    exists?(for_pos)
  end

  private

  def exists?(pos)
    childs.each do |child|
      child.constantize.new.class_var.each do |info|
        if info.position == pos
          puts "Update pos value with class #{info.class}"
          return info.final_pos
        end
      end
    end

    pos
  end
  
  def childs
    ['SnakePositionFactory', 'LadderPositionFactory']
  end

end