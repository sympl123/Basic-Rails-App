Rails.application.routes.draw do
  

  devise_for :users

  resources :advertisements, :only => [:index, :show]
     
      resources :topics do
        resources :posts, except: [:index]
      end

  resource :summaries, :only => [:create, :show]

  get 'about' => 'welcome#about'
 
  root to: 'welcome#index' 
end

  
