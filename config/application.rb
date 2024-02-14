require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module BlogPost
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w(assets tasks))
    config.generators do |g|
      g.test_framework = :rspec
    end
    config.assets.compile = true
  end
end
