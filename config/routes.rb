Rails.application.routes.draw do
  get 'welcome/index'
  resources :users do
    resources :products
  end
  
  get '/admin/:id', to: 'users#admin_users'
  get '/admin/:id/users', to: 'users#admin_users'
  get '/admin/:id/products', to: 'users#admin_products'
  get '/admin/:id/users/:id/products', to: 'users#admin_user_product'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
