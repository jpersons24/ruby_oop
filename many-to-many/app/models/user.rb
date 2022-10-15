class User

    attr_reader :name
    attr_accessor :age, :bio, :home_state
    @@all = []

    def initialize(name, age, bio)
        @name = name
        @age = age
        @bio = bio
        @home_state = home_state
        @@all << self
    end

    def self.all
        @@all
    end

    def self.super_friends(state)
        users = self.all.select do |user| 
            (user.home_state == state && user.pets.length >= 3)
        end
        user_names = []
        users.each{ |user| user_names << user.name}
        return user_names
    end

    def user_pets
        UserPet.all.select do |up|
            up.user == self
        end
    end

    def pets
        return self.user_pets.map do |up|
            up.pet
        end
    end

    # TODO: update because pet does not have single owner anymore
    def adopt_pet(pet)
        UserPet.new(self, pet)
        puts "Congrats #{self.name}, you're now #{pet.name}'s owner!"
    end

    def number_of_pets
        puts "#{self.name}, you have #{self.pets.count} pets."
    end

end

# HAS MANY CLASS
# does NOT hold a reference to the related instance
# have a method to through single source of truth, the related class
    # and use select/filter/find_all to get only the related instance