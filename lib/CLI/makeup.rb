class Makeup
    @@all = []
    attr_accessor :description, :product_type, :price, :product_color, :name
    
    def initialize(name = nil, product_type = nil, product_color = nil, description = nil, price = nil)
        @name = name
        @product_type = product_type
        @product_color= product_color
        @description = description
        @price = price
        @@all << self
    end
    def self.new_makeup(array)
        array.each do |x|
            product = Makeup.new
         x.each do |key,value|
         if key == "name"  
           product.name = value 
         elsif key == "product_type"
            product.product_type = value
         elsif key == "description"
             product.description = value
         elsif key == "price"
             product.price = value
         elsif key == "product_colors"
             colors = []
             value.each do |color|
             colors << color["colour_name"] 
             end
             product.product_color = colors
             end
         end
       end
    end
    def self.all
        @@all
    end
end  