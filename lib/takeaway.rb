class Takeaway

  def verify_payment(customer, order)
    raise "Your payment is not correct. Please pay $#{order.total}." if !correct_payment?(customer, order) 
  end

  def correct_payment?(customer, order)
    customer.payment == order.total 
  end
end