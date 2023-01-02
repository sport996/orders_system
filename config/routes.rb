Rails.application.routes.draw do
  devise_for :admins, defaults: { format: :json },  controllers: {
        sessions: 'admins/sessions',
        registrations: 'admins/registrations'  
      }
  devise_for :shop_owners, defaults: { format: :json },  controllers: {
        sessions: 'shop_owners/sessions',
        registrations: 'shop_owners/registrations'  
      }
  devise_for :buyers, defaults: { format: :json },  controllers: {
        sessions: 'buyers/sessions',
        registrations: 'buyers/registrations'  
      }
  devise_for :cashiers, defaults: { format: :json },  controllers: {
        sessions: 'cashiers/sessions',
        registrations: 'cashiers/registrations'  
      }  
  resources :admins
  resources :shop_owners
  resources :buyers
  resources :cashiers
  resources :invoices
  resources :orders
  resources :shops
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
