Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "sessions"}

  root to: "products#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/products" => "products#index"
end
