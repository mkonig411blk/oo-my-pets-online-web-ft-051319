class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species)
    @species = species
     @@all << self
     @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def say_species
     "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end
  
end