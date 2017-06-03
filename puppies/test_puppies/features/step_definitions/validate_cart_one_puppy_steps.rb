Then(/^I should see "([^"]*)" as the name for line item (\d+)$/) do |name, line_item|
  @cart.name_for_line_item(line_item.to_i).should include name
end

And(/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |subtotal, line_item|
  @cart.subtotal_for_line_item(line_item.to_i).should == subtotal
end


And(/^I should see "([^"]*)" as the cart total$/) do |total|
  @cart.cart_total.should == total
end