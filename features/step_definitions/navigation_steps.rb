When(/^I am in test automation page$/) do
  @pages.test_automation_page.visit
end

When(/^I navigate to Test automation page$/) do
  @pages.navigation_bar.go_to_test_automation_page
end

When(/^I navigate to Contact Us page$/) do
  @pages.navigation_bar.go_to_contact_us_page
end

When(/^I navigate to Registration page$/) do
  @pages.navigation_bar.go_to_reg_page
end

Then(/^I should see Registration page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

