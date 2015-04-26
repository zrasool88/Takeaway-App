require_relative 'twilio'

class Takeaway

  include Twilio

  def verify_payment(customer, order)
    raise "Your payment is not correct. Please pay $#{order.total}." if !correct_payment?(customer, order) 
  end

  def correct_payment?(customer, order)
    customer.payment == order.total 
  end

  def send_text(environment="production")
    load_env_vars(environment)
    send_message('Thank you! Your order has been successfully placed and will be with you in 1 hour.')
  end
end