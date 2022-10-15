class Pet

    attr_accessor :name, :sound, :owner
    attr_reader :species
    @@all = []

    def initialize(name, species, sound, owner=nil)
        @name = name
        @species = species
        @sound = sound
        @owner = owner
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

    def best_friend_name
        if self.owner
            return self.owner.name
        else
            "Sorry #{self.name}, you need to find someone to adopt you"
        end
    end

end

# BELONGS TO CLASS
# will hold reference to the related instance (single source of truth)
# initialize with related instance
# remember the related instance w/ an instance variable
# expose that info with attr_macros (reader, writer)