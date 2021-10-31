require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'capybara/rspec'

APP_HOST = 'https://automationteststore.com/'.freeze
HEADLESS = ENV['HEADLESS'] == 'true'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = APP_HOST
  Capybara::Screenshot.autosave_on_failure = false
  Capybara::Screenshot.prune_strategy = :keep_last_run
end

Capybara.register_driver(:selenium) do |app|
  browser_options = ::Selenium::WebDriver::Chrome::Options.new
  if HEADLESS
    browser_options.args << '--headless'
    browser_options.args << '--window-size=1800,1200'
  end
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: browser_options)
end

World(Capybara::RSpecMatchers)
