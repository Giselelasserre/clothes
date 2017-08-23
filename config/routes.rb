Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items do
    resources :purchases, only: [:create]
  end

  get "/my_items", to: "items#my_items"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
