Rails.application.routes.draw do
  resources :dreams
  resources :users
  resources :themes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
