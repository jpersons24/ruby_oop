class User

    attr_reader :views
    attr_accessor :name, :bio, :hair_color, :birthdate, :age, :home_state
    @@all = []

    # name, age, bio
    def initialize(name, age, bio)
        @name = name
        @age = age
        @bio = bio
        @hair_color = "red"
        @birthdate = nil
        @views = 0
        @home_state = ""
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_home_state(state)
        return self.all.select { |user| user.home_state == state }
    end

    def self.most_popular
        views_per_user =  self.all.map { |user| user.views }
        most_popular_user = self.all.filter { |user| user.views == views_per_user.max}
        puts "#{most_popular_user[0].name} has the most profile views"
    end

    def view_profile
        increment_views
        puts "You are #{self.name}, #{self.age} years old and all about #{self.bio}"
        puts "Your profile has been viewed #{self.views} times"
    end

    def celebrate_birthday
        self.age += 1
        puts "Happy birthday, you are now #{self.age} years old"
    end

    def of_drinking_age
        if self.age >= 21
            puts "#{self.name} can legally drink in the United States."
        else
            puts "Sorry, #{self.name}, you are not old enough to legally drink yet."
        end
    end

    def of_driving_age
        if self.age >= 16
            puts "Awesome, #{self.name} you can legally drive!"
        else
            if self.name == "Gunnar"
                puts "#{self.name}, you are a dog...you can never drive"
                return
            end
            puts "Sorry, #{self.name} you have to wait #{16 - self.age} years before you can drive"
        end
    end

    private

    def increment_views
        @views += 1
    end

end