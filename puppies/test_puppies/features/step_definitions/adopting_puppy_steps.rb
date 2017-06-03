Given(/^I am on the puppy adoption site$/) do
  @browser.goto 'http://puppies.herokuapp.com'
end


When(/^I click the View Details button$/) do
  @browser.button(value: 'View Details').click
end


And(/^I click the Adopt Me button$/) do
  # @browser.button(value: 'Adopt Me!').click
  @details.add_to_cart_element.click
  @cart = ShoppingCartPage.new(@browser)
end

And(/^I click the Complete the Adoption button$/) do
  @cart.proceed_to_checkout
  @checkout = CheckoutPage.new(@browser)
end


And(/^I enter "([^"]*)" in the name field$/) do |name|
  @checkout.name = name
end

And(/^I enter "([^"]*)" in the address field$/) do |address|
  @checkout.address = address
end


And(/^I enter "([^"]*)" in the email field$/) do |email|
  @checkout.email = email
end


And(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  @checkout.pay_type = pay_type
end


And(/^I click the Place Order button$/) do
  @checkout.place_order
end


Then(/^I should see "([^"]*)"$/) do |expected|
  @browser.text.should include expected
end

When(/^I click the first View Details button$/) do
  @browser.button(value: 'View Details', index: 0).click
  @details = DetailsPage.new(@browser)
end

And(/^I click the Adopt Another Puppy button$/) do
  @cart.continue_shopping
end


And(/^I click the second View Details button$/) do
  @browser.button(value: 'View Details', index: 1).click
end