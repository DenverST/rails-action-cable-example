Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "chatrooms#index"
  resources :users do
    resources :messages
  end
  resources :chatrooms
end
