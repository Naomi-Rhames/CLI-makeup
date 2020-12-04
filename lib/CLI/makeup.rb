class Makeup
    @@all = []
attr_accessor :description, :product_type, :price, :product_color, :name
    def initialize(name, product_type, product_color, description, price)
        @name = name
        @product_type = product_type
        @product_color = product_color
        @description = description
        @price = price
        @@all << self
    end
    
    def self.all
        @@all
    end
end