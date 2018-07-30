require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GasteSeguro
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators do |g|
      g.template_engine :haml
      g.system_tests = nil
      g.helper false
      g.view_specs false
      g.assets false
      g.integration_tool :rspec
      g.test_framework = :rspec
      g.request_specs true
      g.factory_bot suffix: 'factory'
      g.controller assets: false
      g.decorator false
    end

    config.autoload_paths += %W(
      #{config.root}/app/jobs
      #{config.root}/app/workers/**/
      #{config.root}/app/controllers/concerns
      #{config.root}/lib
    )

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Brasilia'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.enforce_available_locales = false
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.available_locales = ['pt', :en]
    config.i18n.default_locale = :'pt'

    # Time columns will become time zone aware in Rails 5.1. This
    # still causes `String`s to be parsed as if they were in `Time.zone`,
    # and `Time`s to be converted to `Time.zone`.
    config.active_record.time_zone_aware_types = [:datetime]

    # Set Sidekiq as the default adapter
    config.active_job.queue_adapter = :sidekiq

    config.middleware.insert 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end
  end
end
