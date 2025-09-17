require_relative "production"

Rails.application.configure do
  # review apps should behave like production but not require credentials
  config.require_master_key = false

  # make sure logs go to STDOUT on Heroku (production.rb already wires this
  # when RAILS_LOG_TO_STDOUT is present, which you’ve set)
  config.log_level = :info

  # keep eager load on (good for dynos)
  config.eager_load = true

  # serve static files if the env var is set (you set RAILS_SERVE_STATIC_FILES)
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
end
RUBY