Then(/^I should see "([^"]*)" as the name for line item (\d+)$/) do |name, line_item|
  expect(on(ShoppingCartPage).name_for_line_item(line_item.to_i).include? name).to be true
end

Then(/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |subtotal, line_item|
  expect(on(ShoppingCartPage).subtotal_for_line_item(line_item.to_i).eql? subtotal).to be true
end

Then(/^I should see "([^"]*)" as the cart total$/) do |total|
  expect(on(ShoppingCartPage).cart_total.eql? total).to be true
end
