class Pirate
    attr_accessor :name, :weight, :height
    @@all=[]

    def initialize(hash)
        @name = hash[:name]
        @weight = hash[:weight]
        @height = hash[:height]
    end
    
    def self.all
        @@all
    end
end