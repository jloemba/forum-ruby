Rails.application.routes.draw do

  get 'home/index'

  resources :users
  resources :articles

  resources :session, :only => [:new, :create, :destroy]

  get '/signup' => 'users#new'
  get '/signin' => 'session#new'
  get '/signout' => 'session#destroy'

#Partie API du projet
  namespace :api do
    namespace :v1 do
      resources :articles
      resources :users
      resources :comment

    end
  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end