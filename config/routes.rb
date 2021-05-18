Rails.application.routes.draw do
  resources :tasks
  resources :people
  resources :departments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "people#index"
end
