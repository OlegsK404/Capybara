Then(/^I am on the registration page$/) do
  @pages.registration_page.visit
end

Then(/^I should see Registration page$/) do
  pending
end

When('I fill the first name input field with {string}') do |first_name|
  @pages.registration_page.fill_first_name(first_name)
  sleep 1
end

When('I fill the last name input field with {string}') do |last_name|
  @pages.registration_page.fill_last_name(last_name)
  sleep 1
end

When('I add an email in the email input field') do
  email='Cucumber_' + Time.now.strftime('%H%M%S%L') + '@gmail.com'
  @pages.registration_page.fill_email(email)
  sleep 1
end

When('I fill the address_1 input field with {string}') do |address_1|
  @pages.registration_page.fill_address_1(address_1)
  sleep 1
end

When('I fill the city input field with {string}') do |city|
  @pages.registration_page.fill_city(city)
  sleep 1
end

Then(/^I select "(.*)" in the country dropdown$/) do |country|
  @pages.registration_page.select_country(country)
  sleep 1
end

Then(/^I select "(.*)" in the region dropdown$/) do |region|
  @pages.registration_page.select_region(region)
  sleep 1
end

When('I fill the post code input field with {string}') do |post_code|
  @pages.registration_page.fill_post_code(post_code)
  sleep 1
end

When('I fill the login input field with {string}') do |login|
  login=login + Time.now.strftime('%H%M%S%L');
  @pages.registration_page.fill_login(login)
  sleep 1
end

When('I fill the password input field with {string}') do |password|
  @pages.registration_page.fill_password(password)
  sleep 1
end

When('I fill the password confirm input field with {string}') do |password_confirm|
  @pages.registration_page.fill_password_confirm(password_confirm)
  sleep 1
end

Then(/^I select "(subscribe yes|subscribe no)" radiobutton$/) do |radiobutton_type|
  if radiobutton_type == 'subscribe yes'
    @pages.registration_page.select_subscribe_yes_radiobutton
    sleep 1
  else
    @pages.registration_page.select_subscribe_no_radiobutton
    sleep 1
  end
end

Then(/^I select "(privacy policy)" checkbox$/) do |checkbox_type|
  @pages.registration_page.select_privacy_policy_checkbox
  sleep 1
end

Then(/^I click "(continue)" button$/) do |continue|
  @pages.registration_page.select_continue_btn
  sleep 3
end

Then(/^I check confirmation text$/) do
  expect(@pages.registration_page.element_confirmation).to eq("Congratulations! Your new account has been successfully created!")
  sleep 2
end

