require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ShopApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # unless Rails.env.test?
    #   log_level = String(ENV['LOG_LEVEL'] || "info").upcase
    #   config.logger = Logger.new(STDOUT)
    #   config.logger.level = Logger.const_get(log_level)
    #   config.log_level = log_level
    #   config.lograge.enabled = true # see lograge section below...
    # end
  end
end
