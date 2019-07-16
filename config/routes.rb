Rails.application.routes.draw do

  get 'home/index'

  resources :users
  resources :articles

  resources :sessions, :only => [:new, :create, :destroy]

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  get '/signout', to: 'sessions#destroy'

#Partie API du projet
  namespace :api do
    namespace :v1 do
      resources :articles
      resources :user
      resources :comment

    end
  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end