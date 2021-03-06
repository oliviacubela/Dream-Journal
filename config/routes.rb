Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :themes
  resources :themes do
    resources :dreams, only: [:new, :index, :show, :create, :update]
  end
  resources :dreams
end
