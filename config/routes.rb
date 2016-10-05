Rails.application.routes.draw do
  resources :users 
  resources :articles do
  resources :comments
end
  resources :articles
  get 'sessions/new'
   root                'articles#index'
   get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  
  get 'search'     => 'articles#'
end

