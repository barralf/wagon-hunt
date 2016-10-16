Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'

  get '/team' => 'pages#team'
  get 'contact' => 'pages#join_us'

  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
