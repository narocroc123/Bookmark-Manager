require_relative './setup_test_database.rb'

ENV['ENVIRONMENT'] = 'test'

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'rspec'
require 'capybara'
require 'capybara/rspec'
Capybara.app = BookmarkManager
