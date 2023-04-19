require "capybara/cuprite"

def driver_options
  {
    browser_options: {"no-sandbox": nil, "lang=en": nil},
    timeout: 30,
    window_size: [1440, 820]
  }
end

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app, {
    browser_options: {"no-sandbox": nil, "lang=en": nil},
    timeout: 30,
    window_size: [1440, 820]
  })
end

Capybara.javascript_driver = :cuprite

# Capybara.configure do |config|
#   config.always_include_port = true
#   config.server_host = "lacolhost.com"
#   config.server_port = Rails.configuration.app_port
#   config.app_host = "http://#{config.server_host}:#{config.server_port}"
#   config.default_max_wait_time = 10
#   config.enable_aria_label = true
# end
