Rails.application.routes.draw do

   root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]

    resources :events do
      resources :bookings, only: [:create]
    end

    namespace :api do
      resources :events #, only: [:index, :show, :create, :edit, :new]
    end

end
