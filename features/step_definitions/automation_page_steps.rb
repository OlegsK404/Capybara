Then(/^I should see Test automation page$/) do
  expect(@pages.test_automation_page.contains_section?('TESTING SERVICES')).to eq(true)
end
