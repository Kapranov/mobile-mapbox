Rails.application.routes.draw do
  jsonapi_resources :places
  jsonapi_resources :coordinates
  jsonapi_resources :routes
end
