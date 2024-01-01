require 'net/http'

class CreateShopAddress

  def initialize(address_params)
    #address_params needs to be in hash format
    @address_params = address_params
  end

  def create_address

    uri = URI('http://127.0.0.1:3000/shop_details')
    res = Net::HTTP.post_form(uri, 'address_details' => @address_params)
    puts res.body
  end 
end 