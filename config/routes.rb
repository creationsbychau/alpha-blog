Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'

  resources :categories, except: [:destroy]

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
