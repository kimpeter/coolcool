require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bday
  class Application < Rails::Application
    config.time_zone = 'Asia/Seoul'
    config.assets.precompile += [
      'application.js', 'application.css', 
      'admin.js', 'admin.css', 
      'web.css', 'web.js',
      'mobile.css', 'mobile.js'
    ]
  end
end
