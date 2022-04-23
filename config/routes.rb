Rails.application.routes.draw do
  get '/', to: 'menus#menu_list'
  get '/login', to: 'admins#login'
  get '/features', to: 'admins#features'
  get '/public/menu/:id', to: 'menus#public_menu_detail'
  get '/customer_order', to: 'orders#customer_order'
  get '/customer_order/:id', to: 'orders#customer_order_detail'
  
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
