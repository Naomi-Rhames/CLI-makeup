class API
  def self.product_type(name)  
    url = "https://world.openfoodfacts.org/api/v0/product/737628064502.json"
    response = HTTParty.get(url)
  end
end