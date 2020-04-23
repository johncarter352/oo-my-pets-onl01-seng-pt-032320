class Owner
  attr_accessor 
  attr_reader :name, :species , :cats
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all 
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end
  
  def cats 
    self.cats 
  end
end