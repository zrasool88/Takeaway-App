[![Code Climate](https://codeclimate.com/github/zrasool88/Takeaway-App/badges/gpa.svg)](https://codeclimate.com/github/zrasool88/Takeaway-App) [![Test Coverage](https://codeclimate.com/github/zrasool88/Takeaway-App/badges/coverage.svg)](https://codeclimate.com/github/zrasool88/Takeaway-App) [![Build Status](https://travis-ci.org/zrasool88/Takeaway-App.svg)](https://travis-ci.org/zrasool88/Takeaway-App) [![Dependency Status](https://gemnasium.com/zrasool88/Takeaway-App.svg)](https://gemnasium.com/zrasool88/Takeaway-App)

# Description
	
Week 2 Challenge @ Makers Academy. Writing a small take-away app in Ruby. The API that we'll be using the Twilio API to send text messages confirming a successful order.

# Learning Objectivs

* Employing Single Responsibility Principle
* How to work with APIs in Ruby. 

# Project Spec

* Write an app called Takeaway.
* Implement the following functionality:
 * List of dishes with prices
 * Placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
 * The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
* Use twilio-ruby gem to access the API
* Use a Gemfile to manage your gems
* Make sure that your Takeaway app is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
* However, if your Takeaway app is loaded into IRB and the order is placed, the text should actually be sent

# Class - Responsibility - Collaborator

## Customer Class
Responsibilities        | Collaborators
----------------        | -------------
Has a customer name     | Self
Has a contact number    | Self
Can pay for their order | Takeaway

## Dish Class
Responsibilities      | Collaborators
----------------      | -------------
Has a name            | self
Has a price           | self
Included in Menu      | Menu
Included in Line Item | LineItem

## Menu Class
Responsibilities      | Collaborators
----------------      | -------------
Can add a dish        | Dish
Can remove a dish     | Dish
Can list all dishes   | Dish

## LineItem Class
Responsibilities        | Collaborators
----------------        | -------------
Has the name of a dish  | Dish
Has the price of a dish | Dish
Has quantity of dish    | Self
Has a line total        | Self, Dish
Included in Order       | Order

## Order Class
Responsibilities      | Collaborators
----------------      | -------------
Can add a Line Item   | LineItem
Can remove Line Item  | LineItem
Can total Line Items  | LineItem
Included in Takeaway  | Takeaway

## Takeaway Class
Responsibilities                      | Collaborators
----------------                      | -------------
Can send a confirmation text message  | Twilio
Can accept orders                     | Order
Accepts & verifies payment            | Customer
Processes orders                      | Order, Customer

#How To Use
1. Clone Repository
2. CD into the project directory
3. Run bundle install to install dependencies
4. The Twilio GEM needs credentials
  - Create an account on Twilio and get your account_sid and auth_key
5. These credentials are put in a dotenv file, an example file is provided in the root folder
  - Create two files in the project root folder: .env and .env.testing
  - Put your developer credentials in dot.env
  - Using the same enviroment variable names, put the testing credentials (available from Twilio's developer testing section) in the dot.env.testing file
6. Verify that everything works by running tests using the 'rspec' command
7. Load runner.rb in IRB and have fun!
