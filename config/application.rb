require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Achieve
  class Application < Rails::Application
     # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
     # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
     config.i18n.default_locale = :ja
    config.active_record.raise_in_transactional_callbacks = true
    config.action_view.field_error_proc = proc { |html_tag, instance| html_tag }
  end
end