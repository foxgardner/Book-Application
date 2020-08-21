Rails.application.routes.draw do
  resources :books
  get 'about', to: 'pages#about'

  get 'books', to: 'books#index'

  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end