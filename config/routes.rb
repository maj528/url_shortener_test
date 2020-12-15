Rails.application.routes.draw do
  root to: 'urls#new'
  get 'urls', to: 'urls#index'
  get '/urls/new', to: 'urls#new', as: :new_url
  post '/urls', to: 'urls#create'
  get '/:short_url', to: 'urls#show', as: :url
  
end
