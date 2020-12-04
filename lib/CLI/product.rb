class Product
    attr_accessor :color, :description, :price
    @@all = []
    
    def initialize(color, description,price)
    @color = color
    @description = description
    @price = price
    @@all << self
    end

    def self.all
        @@all
    end
end 