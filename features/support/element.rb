# contains interactions for website elements
class Element
  include RSpec::Matchers
  include Capybara::DSL
  def initialize(type, value)
    @value = { type: type, value: value }
  end

  def find
    Capybara.find(@value[:type], @value[:value])
  end

  def click
    find.click
  end

  def element_on_page?(**options)
    if @value[:type] == :css
      page.has_css?(@value[:value], options)
    else
      page.has_xpath?(@value[:value], options)
    end
  end

  def within_element(**options, &block)
    Capybara.within(@value[:type], @value[:value], options, &block)
  end

  def send_keys(value)
    find.send_keys value
  end

  def text
    find.text
  end

  def value
    find.value
  end

  def checked?
    find.checked?
  end

  def double_click
    find.double_click
  end

  def set(value)
    find.set(value)
  end

  def path
    @value[:value]
  end

  def disabled?
    find.disabled?
  end

  def enabled?
    !find.disabled?
  end

  def css
    @value[:value]
  end

  def attribute(attribute_name)
    find[attribute_name]
  end

  def hover
    find.hover
  end
end
