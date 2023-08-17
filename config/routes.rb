Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :API do
    namespace :V1 do
      resources :users
      resources :rooms
      resources :reservations
      resources :cities
    end
  end

end
