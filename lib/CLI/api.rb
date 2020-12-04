 class API
  def self.up_type(url)  
    url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
    response = HTTParty.get(url)
    response.each do |p_t|
        name = p_t["name"]
        product_type = p_t["product_type"]
        product_color = p_t["product_colors"]
        description = p_t["description"]
        price = p_t["price"]
   Makeup.new(name, product_type, product_color, description, price)
     end
    end
 end