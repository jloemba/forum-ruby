Rails.application.routes.draw do

  get 'home/index'

  get 'article/index'
  get 'article/edit'

  namespace :api do
    namespace :v1 do
      resources :articles
      resources :user
    end
  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end