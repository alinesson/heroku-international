require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  Bundler.require(:default, :assets, Rails.env)
end

module Mena
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.assets.compile = true
    config.assets.initialize_on_precompile = false
  end
end

# Amazon S3 setup
Refinery::Core.configure do |config|
  config.s3_backend = true
  config.s3_access_key_id = 'AKIAJBXRJIMPGLI3EXIA'
  config.s3_secret_access_key = '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'
  config.s3_bucket_name = 'childrens-national-mena'
end
