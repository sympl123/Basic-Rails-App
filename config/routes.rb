Rails.application.routes.draw do
  

  get 'votes/new'

  get 'votes/create'

  get 'comments/new'

  devise_for :users 
  resources :users, only: [:update]

  resources :advertisements, :only => [:index, :show]

    resources :topics do
      resources :posts, except: [:index] do
          resources :comments, only: [:create, :destroy]
      end
    end


  get 'about' => 'welcome#about'
 
  root to: 'welcome#index' 
end

  
