Rails.application.routes.draw do
  resources :users
  resources :scores
  post "users/login", to: "users#login"
end
