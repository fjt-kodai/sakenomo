Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  root "home#index"
  resources :home, only: [:index]
  resources :users, except: [:index]
  resources :events
  resources :comments, only: [:create, :destroy]
  resources :venues, only: [:index, :new, :create, :edit, :update]
  resources :participants, only: [:create, :destroy]

end
