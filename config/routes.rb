Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :users
  resources :customers
  resources :menu_categories
  resources :menus
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
