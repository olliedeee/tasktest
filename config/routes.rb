Rails.application.routes.draw do
  resources :tasks
  resources :goals
  resources :statics
  root 'statics#index'
  devise_for :users
  resources :users, except: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
