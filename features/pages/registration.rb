# Contains all registration page elements
class RegistrationPage

include Capybara::DSL

  def initialize
    @first_name_input = Element.new(:css, '#AccountFrm_firstname')
    @last_name_input = Element.new(:css, '#AccountFrm_lastname')
    @email_input = Element.new(:css, '#AccountFrm_email')
    @address_1_input = Element.new(:css, '#AccountFrm_address_1')
    @city_input = Element.new(:css, '#AccountFrm_city')
    @dropdown = Element.new(:css, '#AccountFrm_country_id')
    @options = Element.new(:css, '#AccountFrm_country_id > option')
    @dropdown2 = Element.new(:css, '#AccountFrm_zone_id')
    @options2 = Element.new(:css, '#AccountFrm_zone_id > option')
    @post_code_input = Element.new(:css, '#AccountFrm_postcode')
    @login_input = Element.new(:css, '#AccountFrm_loginname')
    @password_input = Element.new(:css, '#AccountFrm_password')
    @password_confirm_input = Element.new(:css, '#AccountFrm_confirm')
    @subscribe_yes_radiobutton = Element.new(:css, '#AccountFrm_newsletter1')
    @subscribe_no_radiobutton = Element.new(:css, '#AccountFrm_newsletter0')
    @privacy_policy_checkbox = Element.new(:css, '#AccountFrm_agree')
    @continue_btn = Element.new(:xpath, '//button[contains(@title, "Continue")] ')
    @element = Element.new(:xpath, '//p[text()="Congratulations! Your new account has been successfully created!"]')
  end

  def visit
    Capybara.visit('/index.php?rt=account/create')
  end

  def fill_first_name(text)
    @first_name_input.set(text)
  end

  def fill_last_name(text)
    @last_name_input.set(text)
  end

  def fill_email(text)
    @email_input.set(text)
  end

  def fill_address_1(text)
    @address_1_input.set(text)
  end

  def fill_city(text)
    @city_input.set(text)
  end

  def select_country(country_name)
    @dropdown.click
    Capybara.find(@options.path, text: /#{country_name}/i).click
  end

  def select_region(region_name)
    @dropdown2.click
    Capybara.find(@options2.path, text: /#{region_name}/i).click
  end

  def fill_post_code(text)
    @post_code_input.set(text)
  end

  def fill_login(text)
    @login_input.set(text)
  end

  def fill_password(text)
    @password_input.set(text)
  end

  def fill_password_confirm(text)
    @password_confirm_input.set(text)
  end

  def select_subscribe_yes_radiobutton
    @subscribe_yes_radiobutton.click
  end

  def select_subscribe_no_radiobutton
    @subscribe_no_radiobutton.click
  end

  def select_privacy_policy_checkbox
    @privacy_policy_checkbox.click
  end

  def select_continue_btn
    @continue_btn.click
  end

  def element_confirmation
    @element.text
  end

end
