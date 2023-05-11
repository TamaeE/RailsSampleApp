Rails.application.routes.draw do
  get 'users/index'
  get 'static_pages/home'
  root 'static_pages#home'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/:nickname', to: 'users#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets, only:[:create,:destroy]
end
