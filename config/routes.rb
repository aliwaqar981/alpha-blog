Rails.application.routes.draw do

  root  to:'pages#home'
  get 'articles/index', to:'articles#index'
  get 'about', to:'pages#about'

  resources :articles

  get 'signup', to:'users#new'
  resources :users, except: [:new]

  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'

  resources :categories, except: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
