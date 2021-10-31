Rails.application.routes.draw do
  devise_for :users
  resources :whiskeys
  root 'whiskeys#index'
end
