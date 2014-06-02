require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module StickiesApp
  class Application < Rails::Application

    config.assets.precompile = ['*.js', '*.css']
    config.sass.preferred_syntax = :sass

    config.generators do |g|
      g.orm :mongo_mapper
      g.stylesheets false
      g.javascripts false
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
    end

  end
end
