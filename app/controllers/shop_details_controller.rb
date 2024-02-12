class ShopDetailsController < ApplicationController
  def index
    @address = GetShopAddress.new("all").call
  end

  def show
    
  end

  def create
  end

  def edit
  end

  def delete
  end
end
