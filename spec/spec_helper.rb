ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rails'
require 'capybara/rspec'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

Capybara.javascript_driver = :webkit

RSpec.configure do |config|
  config.include Helpers
  config.order = "random"
  config.infer_spec_type_from_file_location!
  config.before(:each) do
    Note.collection.remove
  end
end
