require 'net/http'

class GetShopAddress

  def initialize(country)
    @country = country
  end

  def call

    uri = URI('http://127.0.0.1:3000/shop_details')
    params = { :country => @country} 
    uri.query = URI.encode_www_form(params)
    res = Net::HTTP.get_response(uri)
    res.body if res.is_a?(Net::HTTPSuccess)

    # header_url = "http://127.0.0.1:3000/shop_addresses"
    # params = @country_code 
    # quary_url = "#{header_url}" + "?" +"country_code=#{params}"
    # uri = URI(quary_url)
    # Net::HTTP.get(uri)
  end 
end 