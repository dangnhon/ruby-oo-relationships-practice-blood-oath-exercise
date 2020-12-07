require 'pry'

#adding in this as a test marker for branch workflow. Want to see if it updates with this comment.

class Cult

    attr_reader :name, :location, :founding_year, :slogan 

    @@all = [] 

    def initialize(name, location, founding_year, slogan) 
        @name = name 
        @location = location 
        @founding_year = founding_year.to_i 
        @slogan = slogan 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def recruit_follower(follower) 
        BloodOath.new(self, follower, Time.now)
    end 

    def cult_population
        BloodOath.all.select { |oath| oath.cult == self }.size
    end 

    def self.find_by_name(cultist_name)
        @@all.select{|info| info.name == cultist_name}.uniq
    end 

    def self.find_location(cult_location)
        @@all.select{|info| info.location == cult_location}.uniq
    end 

    def self.find_by_founding_year(born)
        @@all.select{|info| info.founding_year == born}.uniq
    end 

    def blood_oath_helper
        BloodOath.all.select{|oath|oath.cult == self} 
    end 

    def average_age
        self.blood_oath_helper.sum{|info|info.follower.age}/self.cult_population
    end 

    def my_followers_mottos
        self.blood_oath_helper.map{|info| info.follower.life_motto}
    end 

    def self.least_popular
        self.all.min_by{|cult| cult.cult_population}  
    end 

    def self.most_common_location
        common_hash = {}
        count = 0 
        BloodOath.all.each do |oath| 
            #binding.pry
            if common_hash[oath.cult.location]
                common_hash[oath.cult.location] = oath.cult.name
            elsif !common_hash[oath.cult.location] 
                common_hash[oath.cult.location] = oath.cult.name
            end 
        end 
        common_hash.sort_by{|location, name| location}
        common_hash.max_by{|element| element[0]}.first

    end 

end 