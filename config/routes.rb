Rails.application.routes.draw do
  
 
  get 'sessions/new'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  resources :instagramms do
    collection do
      post :confirm
    end
  end
  
  
   resources :feeds do
   collection do
      post :confirm
    end
  end
  
  
  resources :users
  
  #resources :sessions, only: [:new, :create, :destroy]
 
end
