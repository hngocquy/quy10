Rails.application.routes.draw do
  resources :order_items
  get 'cart', to: 'cart#show'
  resources :user1s
  get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :mnproduct1s
  resources :mnproduct2s
  resources :slides
  resources :mnproducts
  resources :manacates

    resources :user_interface
#đăng nhập
 get 'home/index'



  resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
root to: "home#index"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

     # get '/' => 'login#login_user'

    get '/trangchu' => 'user_interface#page1'
 

  # post '/check' => 'user_interface#check'

  post '/DangKy' => 'user_interface#dangky'

  get '/pageDetailProduct' => 'user_interface#page_detail_product'

  get '/pageCart' => 'user_interface#page_cart'

  post '/addCart' => 'user_interface#add_cart'

  post '/plusNumberProduct' => 'user_interface#plus_number_product'

  post '/minusNumberProduct' => 'user_interface#minus_number_product'

  get  '/getTotalMoney' => 'user_interface#get_total_money'

  get '/pageViewProductCategory' => 'user_interface#page_view_product_category'
  #phần của user
  get '/page_view' => 'user_interface#page_view_product1_category'
  get '/pageViewProductCategory' => 'user_interface#page_view_product_category'



  ### phần admin

    get '/admin' => 'login#login_admin'
    post '/checkadmin' => 'login#check_admin'

    get '/dashboard' => 'admin#dashboard'
    get '/category-mn' => 'manacates#index'
    get '/product-mn' => 'mnproducts#index'
     get '/product1-mn' => 'mnproduct1s#index'
  
    get '/slide-mn' => 'slides#index'

end
