# Description
	
Week 2 Challenge @ Makers Academy. Writing a small take-away app in Ruby. Objective is to learn how to work with APIs in Ruby. The API that we'll be using is Twilio in order to send text messages confirming a successful order.

# Instructions
* Write an app called Takeaway.
* Implement the following functionality:
 * List of dishes with prices
 * Placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
 * The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
* Use twilio-ruby gem to access the API
* Use a Gemfile to manage your gems
* Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
* However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent

# CRC

