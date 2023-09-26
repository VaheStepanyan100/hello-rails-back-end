Rails.application.config.middleware.insert_before Rails::Rack::Logger, Rack::Cors do
  allow do
    origins 'http://localhost:3001', ' http://192.168.11.52:3001' # Add both origins here
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end