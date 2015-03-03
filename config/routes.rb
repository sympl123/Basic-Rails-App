Rails.application.routes.draw do
  
  get 'advertisement/index' => 'advertisement#index' 

  get 'advertisement/show' => 'advertisement#show'

  resources :posts 
  get 'about' => 'welcome#about'
 
  root to: 'welcome#index' 
end

  
