Rails.application.routes.draw do
  resources :whiskeys
  root 'whiskeys#index'
end
