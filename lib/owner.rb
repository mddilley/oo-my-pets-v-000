class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets.each do |type|
      type == :dogs ? type.each {|i| i.mood = "happy"} : nil 
    end
  end

end
