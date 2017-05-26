Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/index'
  end

  get 'sessions/new'

  resources :movies do
    resources :comments
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'users#index'
  root 'search#index'

  # Session operations
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  # Admin Dashboard
  get '/admin', to: 'admin/dashboard#index'
  
  # Comments
  get  '/movies/:movie_id/comments', to: 'comments#new'
  post '/movies/:movie_id/comments', to: 'comments#create'
end
