class Pet

    attr_accessor :name, :sound
    attr_reader :species
    @@all = []

    def initialize(name, species, sound)
        @name = name
        @species = species
        @sound = sound
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_species
        return self.all.map do |pet|
            pet.species
        end.uniq
    end

    def self.find_by_species(species)
        pet_list = []
        self.all.each do |pet|
            if pet.species == species
                pet_list << pet.name
            end
        end
        return pet_list
    end

    def user_pets
        UserPet.all.select do |up|
            up.pet == self
        end
    end

    def owners
        return self.user_pets.map do |up|
            up.user
        end
    end

    def best_friend_name
        self.owners.each do |owner|
            puts "#{owner.name} is my best friend"
        end
    end

    def run_away
        UserPet.all.delete_if do |up|
            up.pet == self
        end
    end

end

# BELONGS TO CLASS
# will hold reference to the related instance (single source of truth)
# initialize with related instance
# remember the related instance w/ an instance variable
# expose that info with attr_macros (reader, writer)