class Ship

    attr_reader :name, :type, :booty 

     SHIPS = []

    def initialize(arg)
        @name = arg[:name]
        @type = arg[:type]
        @booty = arg[:booty]
        SHIPS << self 
    end 

    def self.all
        SHIPS
    end 

    def self.clear 
        SHIPS.clear
    end 

end