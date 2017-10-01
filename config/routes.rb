Rails.application.routes.draw do
  resources :goals do 
    resources :tasks
  end
  
  resources :statics
  root 'goals#index'
  devise_for :users
  resources :users, except: [:new]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
