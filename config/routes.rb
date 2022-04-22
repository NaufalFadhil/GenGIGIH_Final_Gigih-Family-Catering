Rails.application.routes.draw do
  get '/', to: 'menus#menu_list'
  get '/login', to: 'admins#login'
  post '/login', to: 'admins#check_admin'
  resources :orders
  resources :order_details
  resources :admins
  resources :customers
  resources :menu_categories
  resources :menus
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
