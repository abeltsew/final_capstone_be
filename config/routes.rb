Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      # resources :users
      post 'users/new_session', to: 'users#new_session'
      post 'users/start', to: 'users#start'
      resources :rooms
      resources :reservations
      resources :cities
    end
  end

end
