Rails.application.routes.draw do
  devise_for :users
  root "user#index"
  
  get "/user", to: "user#index"

end
