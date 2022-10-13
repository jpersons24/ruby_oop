require 'pry'
require_relative './app/models/user'

def run
    puts "Welcome to the OOP app!"
    puts "Please sign up for our app!"
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp
    puts "What are you all about?"
    bio = gets.chomp
    new_user = User.new(name, age, bio)
    puts "would you like to view your profile"
    choice = gets.chomp

    if choice == 'y'
        new_user.view_profile
        puts "Would you like to change your bio?"
        second_choice = gets.chomp

        if second_choice == "y"
            puts "Go ahead and update your bio"
            updated_bio = gets.chomp
            new_user.bio = updated_bio
            puts "Would you like to see your new profile?"
            answer = gets.chomp

            if answer =="y"
                new_user.view_profile
            else
                puts "See you later!"
            end

        else
            puts "See you later!"
        end

    else 
        puts "See you later"
    end 
end

jake = User.new("Jake", 30, "coding and soccer")
brynn = User.new("Brynn", 30, "instagram and my dog")
chase = User.new("Chase", 26, "hamptons and my boyfriend")
erin = User.new("Erin", 24, "taking care of animals")
jack = User.new("Jack", 18, "playing fortnite and being the cool kid at school")
kinsley = User.new("Kinsley", 4, "playing with magnet tiles and dressing like a princess")
gunnar = User.new("Gunnar", 1, "playing with my toys and annoying my dad")

binding.pry
puts 'prying complete'
