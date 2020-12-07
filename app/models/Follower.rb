require 'pry'

class Follower

    attr_reader :name, :age, :life_motto
    @@all = [] 

    def initialize(name, age, life_motto)
        @name = name 
        @age = age.to_i 
        @life_motto = life_motto
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.follower_by_certain_age(age)
        @@all.select{|follower_info| follower_info.age >= age}
    end 

end 