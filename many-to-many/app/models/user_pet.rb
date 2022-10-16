class UserPet
    attr_accessor :user, :pet
    @@all = []

    def initialize(user, pet)
        @user = user
        @pet = pet
        @@all << self
    end

    def self.all
        @@all
    end
end