Rails.application.routes.draw do
  resources :usuarios
  resources :atividades
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  get "atividade/visualizar", to: "atividades#visualizar"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
