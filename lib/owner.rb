class Owner
  attr_accessor :cats
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @cats = []
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
    @cats
  end
  
  def dogs 
    @dogs 
  end
end