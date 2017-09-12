Rails.application.routes.draw do
  resources :telefones
  resources :contatos
  resources :rooms

  get '/index', to: 'contatos#index'
  get '/visualizando', to: 'contatos#visualizando'

  get '/indexCalculadora', to: 'calculadora#indexCalculadora'
  post '/indexCalculadora', to: 'calculadora#indexCalculadora'

  #post '/show', to: 'contatos#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
