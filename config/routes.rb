Rails.application.routes.draw do
	  resources :posts

resources :posts do
  resources :comments
end
  devise_for :users
  get '/users/:id', to: 'users#show', as: 'profile'
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
