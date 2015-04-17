require 'twilio-ruby'
require 'dotenv'

module Twilio

  def send_message(body)
    load_env_vars
    setup_twilio
    message = @client.account.messages.create(
      :to => ENV['CUST_NUM'],
      :from => ENV['TWILIO_NUM'],
      :body => body
      )
  end

  private

  def load_env_vars
    Dotenv.load('./dot.env')
  end

  def setup_twilio
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new account_sid, auth_token
  end
end