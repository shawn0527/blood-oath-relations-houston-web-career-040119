class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        bloodoaths = BloodOath.all.select do |bloodoath|
            bloodoath.follower == self
        end

        bloodoaths.map do |bloodoath|
            bloodoath.cult
        end
    end

    def join_cult(cult)
        if self.age >= cult.minimum_age
        BloodOath.new(cult, self)
        else
            "Sorry, you are too young to join us!"
        end
    end

    def self.of_a_certain_age(follower_age)
        Follower.all.select do |follower|
            follower.age > follower_age 
        end
    end

    def fellow_cult_members
        self.cults.map do |cult|
            cult.followers
        end.flatten!.uniq
    end
    



end


