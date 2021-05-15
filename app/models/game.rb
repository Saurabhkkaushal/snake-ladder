class Game
  attr_accessor :meta_data, :id

  @@id = 0

  def initialize
    @@id += 1
    self.id = @@id
    @meta_data = {}
    self
  end

end