Rails.application.routes.draw do
  resources :questions
  root 'home#index'

  devise_for :accounts
  get 'hello', to: 'hello#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
