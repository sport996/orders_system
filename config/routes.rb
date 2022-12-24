Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json },  controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'  
      }
  resources :users
  resources :invoices
  resources :orders
  resources :shops
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
