Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  resources :users
  resources :insects
end
