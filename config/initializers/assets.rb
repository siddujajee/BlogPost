# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap/dist/js")
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'custom_assets')

Rails.application.config.assets.precompile += %w( actiontext.css )

# Precompile additional assets.
# Rails.application.config.assets.precompile += %w(bootstrap.min.js)
# Rails.application.config.assets.precompile << proc { |path|
#   path.start_with?('custom_assets/')
# }
