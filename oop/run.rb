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
    else 
        puts "See you later"
    end 

    puts "Would you like to change your bio?"
    second_choice = gets.chomp
    if second_choice == "y"
        
        puts "Go ahead and update your bio"
        updated_bio = gets.chomp
        new_user.bio = updated_bio
        puts "would you like to see your new profile"
        answer = gets.chomp

        if answer == "y"
            puts "You are #{new_user.name}, you are #{new_user.age} years old, and you are all about #{new_user.bio}"
        else
            puts "come back another time"
        end

    else
        puts "No problem see you later"
    end
end

binding.pry
puts 'prying complete'
