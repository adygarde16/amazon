Rails.application.routes.draw do
  devise_for :users, controllers: {confirmations: 'confirmations'}
  root "user#index"
  
  get "/user", to: "user#index"

end
 