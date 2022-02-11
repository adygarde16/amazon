Rails.application.routes.draw do
  devise_for :users, controllers: {confirmations: 'confirmations'}
  root "user#index"
  
  resources :user do
    resources :prodects
    resources :orders
  end
end
  