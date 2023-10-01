# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

require 'rack/cors'

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: 'Access-Control-Allow-Origin',
      methods: [:post, :get, :put, :patch, :delete, :options, :head]
      # expose: ['ACCESS-CONTROL-ALLOW-ORIGIN']
  end
end