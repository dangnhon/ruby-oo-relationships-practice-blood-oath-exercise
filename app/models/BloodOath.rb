require 'pry' 

class BloodOath

    attr_reader :initiation_date
    attr_accessor :cult, :follower

    @@all = [] 

    def initialize(cult, follower, initiation_date)
        @cult = cult 
        @follower = follower 
        @initiation_date = Time.now.to_s
        @@all << self
    end 

    def self.all 
        @@all
    end 
    
   

end 