class SearchShop
  def initialize(search_params)
    @search_params= search_params
  end

  def call

  end

  def search
    uri = URI('http://localhost:3000/shop_addresses')
  end
 
end