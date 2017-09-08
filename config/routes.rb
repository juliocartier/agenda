Rails.application.routes.draw do
  resources :contatos
  resources :rooms
  
  get '/index', to: 'contatos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
