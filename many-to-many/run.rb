require 'pry'
require_relative './app/models/pet'
require_relative './app/models/user'


# USER INSTANCES
jake = User.new("Jake", 30, "coding and playing soccer")
brynn = User.new("Brynn", 30, "can I have a bite?")
erin = User.new("Erin", 24, "saving animals")

# PET INSTANCES
gunnar = Pet.new("Gunnar", "dog", "woof")
dumpy = Pet.new("Dumpy", "sheep", "baaahhh")
luna = Pet.new("Luna", "cat", "meow")
oreo = Pet.new("Oreo", "dog", "bark bark")
jinx = Pet.new("Jinx", "frog", "ribbit")
spot = Pet.new("Spot", "hamster", "nibble nibble")
daisy = Pet.new("Daisy", "dog", "woof woof")
beans = Pet.new("Beans", "turtle", "waddle waddle")

binding.pry
puts "prying complete"