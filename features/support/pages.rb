# Initializes all page objects
class Pages

  attr_accessor :navigation_bar, :landing_page, :test_automation_page,
                :contact_us_page, :registration_page

  def initialize
    @navigation_bar = NavigationBar.new
    @landing_page = LandingPage.new
    @test_automation_page = TestAutomationPage.new
    @registration_page = RegistrationPage.new
  end

end