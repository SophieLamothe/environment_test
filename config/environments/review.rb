require_relative "production"

Rails.application.configure do
  # behave like production but don't require credentials
  config.require_master_key = false

  # production-like defaults for review apps
  config.eager_load = true
  config.log_level = :info
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
end
