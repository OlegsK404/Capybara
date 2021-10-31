def add_screenshot(name)
  file_path = "screenshots/#{name}.png"
  Capybara.page.driver.browser.save_screenshot(file_path)
  image = File.open(file_path, 'rb', &:read)
  encoded_image = Base64.encode64(image)
  attach(encoded_image, 'image/png;base64')
end
