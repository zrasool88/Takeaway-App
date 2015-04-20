require_relative 'twilio'

class Order

  include Twilio

	attr_reader :items

	def initialize
		@items = []
	end

  def add_line_item(line_item)
    @items << line_item
  end

  def remove_line_item(line_item)
    @items.delete(line_item)
  end

  def total
    items.map{|lineitem| lineitem.line_total}.inject(:+)
  end

  def send_text
    send_message('Thank you! Your order has been successfully placed and will be with you in 1 hour.')
  end
end