# Contains all navigation section elements
class NavigationBar

  include Capybara::DSL

  def initialize
    @solutions_section = Element.new(:xpath, '//div[text() = "Solutions"]')
    @test_automation_btn = Element.new(:css, '.menu-item a[href*="test-automation"]')
    @contact_us_btn = Element.new(:css, '.menu-bar a.contact-us-btn')
    @register_btn = Element.new(:xpath, '//a[text()="Login or register"]')
    @continue_btn = Element.new(:css, '#accountFrm > fieldset > button')
  end

  def go_to_test_automation_page
    @solutions_section.hover
    @test_automation_btn.click
  end

  def go_to_contact_us_page
    @contact_us_btn.click
  end

  def go_to_reg_page
    @register_btn.click
    @continue_btn.click
    sleep 5
  end

end
