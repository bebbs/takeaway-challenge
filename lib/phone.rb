class Phone

  require 'twilio-ruby'

  def client
    Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
  end
  
  def delivery_time
    (Time.new + (60*60)).strftime("%R")
  end

  def send_text
    client.messages.create(
      from:  ENV['TWILIO_NUMBER'],
      to:    ENV['PERSONAL_NUMBER'],
      body:  message_body)
  end

  def message_body
    return "Thank you! Your order was placed and will be delivered before #{delivery_time}"
  end

end