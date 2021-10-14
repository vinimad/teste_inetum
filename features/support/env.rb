require 'capybara/cucumber'
require 'capybara'
require 'rspec'
require 'site_prism'
require 'selenium-webdriver'
require "faker"

$myemail = (Faker::Internet.email)
$mypass = '12345'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automationpractice.com'
    config.default_max_wait_time = 5
end