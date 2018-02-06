require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara/poltergeist'

World Capybara::DSL
BROWSER = ENV['BROWSER']

if BROWSER.eql?('chrome')
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    options = {
      :js_errors => false,
      :timeout => 360,
      :debug => false,
      :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
else
  Capybara.default_driver = :poltergeist
  Capybara.register_driver :poltergeist do |app|
    options = {
      :js_errors => false,
      :timeout => 360,
      :debug => false,
      :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
      :inspector => false,
    }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end
