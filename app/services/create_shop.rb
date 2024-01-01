require 'net/http'

class CreateShop

  def initialize(shop_params)
    #address_params needs to be in hash format
    @shop_params = shop_params
  end

  def call 
    create_shop
  end 

  def create_shop

    uri = URI('http://127.0.0.1:3000/shop_details')
    res = Net::HTTP.post_form(uri, @shop_params)
    puts res.body
  end 
end 