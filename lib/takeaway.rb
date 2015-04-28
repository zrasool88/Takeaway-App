require_relative 'twilio'

class Takeaway
  include Twilio

  attr_reader :orders

  def initialize
    @orders = []
  end

  def accept(order)
    if order.empty?
      fail 'Order has no line item'
    else
      @orders << order
    end
  end

  def remove_processed_order
    @orders.shift
  end

  def verify_payment(customer, order)
    return false if correct_payment?(customer, order)
    fail "Your payment is not correct. Please pay $#{order.total}."
  end

  def correct_payment?(customer, order)
    customer.payment == order.total
  end

  def send_text(environment = 'production')
    load_env_vars(environment)
    send_message('Thank you! Your order has been successfully placed and will
      be with you in 1 hour.')
  end

  def process_order(customer, order)
    if correct_payment?(customer, order)
      send_text
      remove_processed_order
    end
    'Order Processed'
  end
end
