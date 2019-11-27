Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :foods do
    resources :orders, except: [:destroy] do
      resources :reviews, only: [:create]
    end
  end
  resources :orders, only: [:destroy]
  get "dashboard", to: "dashboards#dashboard", as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
