Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001' # Update this with your React frontend's URL
    resource '/api/v1/*', headers: :any, methods: [:get, :options] # Allow GET requests
  end
end
