class ShopAddressMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def info_email(user)
    @user = user 
    @address = GetShopAddress.new(@user.country).call
    mail(to: @user.email, subject: "Our Store in #{user.country}")
  end 
end