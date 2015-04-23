require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NaoMeCaloApp
  class Application < Rails::Application
    config.autoload_paths += Dir["#{config.root}/lib"]
    
    config.assets.paths << Rails.root.join("vendor","assets","bower_components")
    config.assets.paths << Rails.root.join("vendor","assets","bower_components","bootstrap-sass-official","assets","fonts")
  
    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff|woff2)$)

    config.assets.precompile += %w( custom.css clean-blog.css map.css )
    config.assets.precompile += %w( custom.js clean-blog.js dados.js )
  end
end
