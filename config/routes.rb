Rails.application.routes.draw do
  
  devise_for :users

  resources :advertisement
  get 'advertisement/index' => 'advertisement#index'

  get 'advertisement/show' => 'advertisement#show'
  

  resources :posts 
  get 'about' => 'welcome#about'
 
  root to: 'welcome#index' 
end

  
