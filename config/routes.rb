Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :foods do
    resources :orders, except: [:destroy]
  end
  resources :orders, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
