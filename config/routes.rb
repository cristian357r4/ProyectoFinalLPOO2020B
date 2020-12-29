Rails.application.routes.draw do
  resources :tests
  resources :personas
  resources :pacientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'registrar/nutriologo', to: 'home#registro', via: :post, :as  => :guardar_nutriologo
  root :to => 'home#index'
end
