Rails.application.routes.draw do
  resources :urls, only: [:index, :new, :create, :show]
  resources :users, only: [:index, :new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
