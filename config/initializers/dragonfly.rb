require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "640f378c5a2d2d425a1b952ada7b28706e06df665f9ade1da952bfe2d60a014f"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end
