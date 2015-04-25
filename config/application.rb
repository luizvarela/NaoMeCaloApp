require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module NaoMeCaloApp
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.time_zone = "Brasilia"

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

    # https://github.com/rails/rails/issues/13159
    I18n.enforce_available_locales = false

    config.i18n.available_locales = [:"pt-BR", :en]
    config.i18n.default_locale = :"pt-BR"

    I18n.locale = config.i18n.locale = config.i18n.default_locale
    
    config.autoload_paths += Dir["#{config.root}/lib"]
    
    config.assets.paths << Rails.root.join("vendor","assets","bower_components")
    config.assets.paths << Rails.root.join("vendor","assets","bower_components","bootstrap-sass-official","assets","fonts")
  
    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff|woff2)$)

    config.assets.precompile += %w( custom.css clean-blog.css map.css )
    config.assets.precompile += %w( custom.js clean-blog.js dados.js )
  end
end
