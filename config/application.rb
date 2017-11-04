require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Overtime
  class Application < Rails::Application
   
    config.load_defaults 5.1

    config.generators do |g|
      g.template_engine  :haml
      g.factory_bot dir: 'spec/factories'
    end



    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  end
end
