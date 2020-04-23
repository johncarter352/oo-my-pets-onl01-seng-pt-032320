class Cat 
  attr_accessor :owner
  attr_reader :name, :mood
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
  end
end