
class SendEmailJob < ActiveJob::Base
  queue_as :default
  
  def perform(body, email)
    Mailer.send(body, email)
  end
end