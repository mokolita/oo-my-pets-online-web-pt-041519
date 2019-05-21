require 'pry'

class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
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
  
  def say_species
    "I am a #{@species}."
  end   
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes].push(fish) 
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats].push(cat)   
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs].push(dog)   
  end
  
  def walk_dogs 
<<<<<<< HEAD
   @pets[:dogs].each { |dog| dog.mood = "happy"}
  end 
  
   def play_with_cats 
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end
  
  def feed_fish 
    @pets[:fishes].each { |fish| fish.mood = "happy"}
  end
  
  def sell_pets 
     @pets.each do |species, array|
        array.each do |pet|
          pet.mood = "nervous"
      end
    end 
    @pets.clear
=======
    @pets.each do |species, array|
      if species == :dog 
        array.each do |dog|
          dog.mood = "happy"
        end 
      end
    end 
  end 
  
   def play_with_cats 
    Dog.mood = "happy"
  end
  
  def feed_fish 
    Dog.mood = "happy"
  end
  
  def sell_pets 
    Dog.mood = "happy"
>>>>>>> b7f6198fbefa4dbb23a534d5fe261d8f11d43984
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)." 
  end 
end