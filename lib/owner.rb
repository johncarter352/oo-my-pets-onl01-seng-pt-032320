class Owner
  attr_accessor :cats
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
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
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each{|cat| cat.mood = "happy"}
  end
    
  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil
      dog.mood = "nervous"
    end
  end
  
  def list_pets
    totald = self.dogs.count
    total c = self.dogs.count
    "I have #{totald} dog(s), and #{totalc} cat(s).")
  end
    
    
end