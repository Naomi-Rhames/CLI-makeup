 class API
  def self.up_type  
    url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
    response = HTTParty.get(url)
    Makeup.new_makeup(response)
  end
end

 