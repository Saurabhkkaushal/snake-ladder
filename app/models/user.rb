class User
	attr_accessor :name

  def initialize(args = {})
    @name = args[:name]
  end
end