require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Railsstockholm
  class Application < Rails::Application
    config.generators.jbuilder = false
    config.generators.resource_route = :explicit_route
    config.generators.stylesheets = false
    config.generators.test_framework = false
    config.generators.helper = false
    config.generators.assets = false
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
