require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module ShopApp
  class Application < Rails::Application
    config.logger = ActiveSupport::Logger.new(STDOUT)
    config.log_level = :debug
  end
end
