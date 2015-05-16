Rails.application.routes.draw do
  resources :users
  resources :posts, except: [:index, :destroy]
  resource :sessions, only: [:new, :create, :destroy]
  resources :subs, except: :destroy do
    resources :posts, only: :new
  end

  root 'users#index'
end
