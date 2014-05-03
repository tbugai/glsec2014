Given(/^I am on the login page$/) do
  check_element_exists "view marked:'username'"
end

When(/^I enter the username "(.*?)"$/) do |username|
  text_field_selector =  "view marked:'username'"
  check_element_exists( text_field_selector )
  touch( text_field_selector )
  frankly_map( text_field_selector, 'setText:', username )
  frankly_map( text_field_selector, 'endEditing:', true )
end

When(/^I enter the password "(.*?)"$/) do |password|
  text_field_selector =  "view marked:'password'"
  check_element_exists( text_field_selector )
  touch( text_field_selector )
  frankly_map( text_field_selector, 'setText:', password )
  frankly_map( text_field_selector, 'endEditing:', true )
end

Then(/^I should be on the sites page$/) do
  check_element_exists "navigationItemView marked:'Sites'"
end
