MarketPlaceApi::Application.routes.draw do
  # This points to the controllers in the api folder.
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do

  end
end