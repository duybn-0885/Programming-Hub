require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProgrammingHub
  class Application < Rails::Application
    config.time_zone = 'Asia/Tokyo'
    config.active_record.default_timezone = :utc
    config.active_record.time_zone_aware_attributes = false
    config.i18n.load_path += Dir["#{Rails.root.to_s}/config/locales/**/*.{rb,yml}"]
    Dir["#{Rails.root.join('lib')}/*"].delete_if{|path| path == "#{Rails.root.join('lib', 'capistrano')}"}.each do |f|
      config.autoload_paths << f
      config.eager_load_paths << f
    end
    config.i18n.available_locales = [:en, :vi]
    config.i18n.default_locale = :en
  end
end
