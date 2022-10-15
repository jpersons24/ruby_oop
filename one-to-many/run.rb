require 'pry'
require_relative './app/models/pet'
require_relative './app/models/user'


# USER INSTANCES
jake = User.new("Jake", 30, "coding and playing soccer", "New York")
brynn = User.new("Brynn", 30, "can I have a bite?", "New York")
erin = User.new("Erin", 24, "saving animals", "New York")

# PET INSTANCES
gunnar = Pet.new("Gunnar", "dog", "woof", jake)
dumpy = Pet.new("Dumpy", "sheep", "baaahhh", jake)
luna = Pet.new("Luna", "cat", "meow", jake)
oreo = Pet.new("Oreo", "dog", "bark bark", brynn)
jinx = Pet.new("Jinx", "frog", "ribbit", brynn)
spot = Pet.new("Spot", "hamster", "nibble nibble", brynn)
daisy = Pet.new("Daisy", "dog", "woof woof", erin)
beans = Pet.new("Beans", "turtle", "waddle waddle")

binding.pry
puts "prying complete"