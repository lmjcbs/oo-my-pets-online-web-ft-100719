class Owner
  # code goes here
  attr_reader :name, :species

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
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each { |dog| dog.mood = "happy" }
  end

end
