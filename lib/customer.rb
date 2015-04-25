class Customer

  attr_reader :name, :phone_number, :payment

  def initialize(name, number)
    @name = name
    @phone_number = number
  end

  def pay(amount)
    @payment = amount
  end
end