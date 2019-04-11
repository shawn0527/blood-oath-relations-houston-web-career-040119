class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

    @@all = []
    
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def followers
        bloodoaths = BloodOath.all.select do |bloodoath|
            bloodoath.cult == self
        end

        bloodoaths.map do |bloodoath|
            bloodoath.follower
        end

    end

    def recruit_follower(follower)
        if follower.age >= self.minimum_age
        new_bloodoath = BloodOath.new(self, follower)
        else
            "Sorry, you are too young to join us!"
        end
    end

    def cult_population
        self.followers.size
    end

    def self.find_by_name(cult_name)
        self.all.find do |cult|
                cult.name == cult_name
            end
    end

    def self.find_by_location(cult_location)
        self.all.select do |cult|
            cult.location == cult_location
        end
    end

    def self.find_by_founding_year(cult_founding_year)
        self.all.select do |cult|
            cult.founding_year == cult_founding_year
        end
    end



end
