class User
    attr_reader :age # attr_reader writes getter/reader methods for you
    attr_accessor :name, :bio # attr_accessor gives both getter/reader methods and setter methods

    # name, age, bio
    def initialize(name, age, bio)
        @name = name
        @age = age
        @bio = bio
    end

    def view_profile
        puts "You are #{@name}, #{@age} years old and all about #{@bio}"
    end

end