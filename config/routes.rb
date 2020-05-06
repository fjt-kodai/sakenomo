Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  root "home#index"
  resources :home, only: [:index]
  resources :users, except: [:index]
  resources :venues, only: [:index, :new, :create, :edit, :update]
  resources :participants, only: [:create, :destroy]

  resources :events do
    resources :comments, only: [:create, :destroy]
  end
end
