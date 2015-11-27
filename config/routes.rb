require 'api_constraints'

MarketPlaceApi::Application.routes.draw do
  devise_for :users
  # This points to the controllers in the api folder.
  # All routes will be considered root after api.market_place_api.dev subdomain.
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    # URL becomes api.market_place_dev.com/v1/:resources
    scope module: :v1,
      constraints: ApiConstraints.new(version: 1, default: true) do


    end
  end
end