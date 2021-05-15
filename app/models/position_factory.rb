class PositionFactory

  def get_final_pos(for_pos)
    return [for_pos, false] if !exists?

    while(!exists?(pos))
      pos = exists?(pos)
    end

    pos
  end

  private

  def exists?(pos)
    class_var.each do |info|
      return info.position if info.position == pos
    end

    -1
  end
  
end