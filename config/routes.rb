Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  resources :people
  resources :departments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'administrators', to: 'administrators#index'
  get 'toggle_admin', to: 'administrators#toggle_admin'

  root "people#index"
end
