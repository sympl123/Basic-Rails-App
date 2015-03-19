Rails.application.routes.draw do
  

  get 'comments/new'

  devise_for :users 
  resources :users, only: [:update]

  resources :advertisements, :only => [:index, :show]
     
      resources :topics do
        resources :posts, except: [:index]
      end

    resources :posts do
      resources :comments, :only => [:create]
    end 



  get 'about' => 'welcome#about'
 
  root to: 'welcome#index' 
end

  
