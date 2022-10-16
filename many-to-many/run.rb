require 'pry'
require_relative './app/models/pet'
require_relative './app/models/user'
require_relative './app/models/user_pet'


# USER INSTANCES
jake = User.new("Jake", 30, "coding and playing soccer")
brynn = User.new("Brynn", 30, "can I have a bite?")
erin = User.new("Erin", 24, "saving animals")
megan = User.new("Megan", 26, "taking care of my kids")

# PET INSTANCES
gunnar = Pet.new("Gunnar", "dog", "woof")
dumpy = Pet.new("Dumpy", "sheep", "baaahhh")
luna = Pet.new("Luna", "cat", "meow")
oreo = Pet.new("Oreo", "dog", "bark bark")
jinx = Pet.new("Jinx", "frog", "ribbit")
spot = Pet.new("Spot", "hamster", "nibble nibble")
daisy = Pet.new("Daisy", "dog", "woof woof")
beans = Pet.new("Beans", "turtle", "waddle waddle")

up1 = UserPet.new(jake, gunnar)
up2 = UserPet.new(brynn, gunnar)
up3 = UserPet.new(jake, beans)
up4 = UserPet.new(erin, daisy)
up5 = UserPet.new(erin, dumpy)
up6 = UserPet.new(brynn, oreo)

# Prompt user to enter their name
    # if the user exists
        # Ask how their pets are and if the want to adopt another pet?
            # if yes, show them the pets
            # if no, ask if they want to update their bio
                # if yes, prompt them to update their bio
                    # share their new profile with them
                # if no, bid them farewell
    # if the user DOES NOT exist
        # prompt the user to create a profile
        # go to greeting prompt

def get_name
    puts "Hello, what is your name?"
end

def create_profile(user_name)
    puts "Welcome #{user_name}, let's finish setting up your profile!"
    puts "How old are you?"
    age = gets.chomp
    puts "And what do you like to do?"
    bio = gets.chomp
    User.new(user_name, age, bio)
end

def greet_user(user)
    puts "Hi #{user.name}, you are #{user.age} years old, have #{user.number_of_pets} pets and like #{user.bio}"
end

def display_pets(pets)
    pets.each do |pet|
        puts "#{pet.name}, the #{pet.species}"
    end
end

def adopt_a_pet(user)
    puts "Would you like to adopt a pet?"
    answer = gets.chomp
    if answer == "y"
        adoptable_pets = Pet.all.select do |pet|
            pet.owners.count == 0
        end
        puts "Here is the list of adoptable pets:"
        display_pets(adoptable_pets)
        puts ""
        puts "Enter a pet name to adopt it"
        pet_name = gets.chomp
        pet_to_adopt = Pet.find_by_name(pet_name)[0]
        user.adopt_pet(pet_to_adopt)
    end
end

def run 
    get_name
    user_name = gets.chomp
    user = User.find_by_name(user_name)
    if user.count == 1
        greet_user(user[0])
        adopt_a_pet(user[0])
    elsif user.count == 0
        # prompt to create new profile
        create_profile(user_name)
        # greet and display user profile
        new_user = User.find_by_name(user_name)
        greet_user(new_user[0])
        adopt_a_pet(new_user[0])
    else
        puts "Sorry, there's been an error. Please try again"
    end
end

binding.pry
puts "prying complete"