Rails.application.routes.draw do
    mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	  resources :posts




 resources :comments do
  member do
    put "like", to: "commments#upvote"
    put "dislike", to: "comments#downvote"
  end
end

resources :posts do
	member do
      put "like", to:    "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  resources :comments
end

  devise_for :users
  get '/users/:id', to: 'users#show', as: 'profile'
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
