Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :rooms
      resources :reservations
      resources :cities
    end
  end

  # namespace :API do
  #   namespace :V1 do
  #     get '/login', to: 'users#login'
  #   end
  # end

end
