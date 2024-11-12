# config/application.rb

require_relative "boot"
require "rails/all"
require "rack/cors" 

module BookstoreApi
  class Application < Rails::Application
    # Other configurations...

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:4200'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end
  end
end
