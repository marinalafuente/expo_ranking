# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( highcharts.js )
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( expos.css )
Rails.application.config.assets.precompile += %w( expos.js )
Rails.application.config.assets.precompile += %w( locations.css )
Rails.application.config.assets.precompile += %w( locations.js )
Rails.application.config.assets.precompile += %w( graphic.js )
Rails.application.config.assets.precompile += %w( chart.js )
Rails.application.config.assets.precompile += %w( facebook.js )