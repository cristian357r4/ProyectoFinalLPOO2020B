Rails.application.routes.draw do
  resources :suplementos
  resources :alimentos
  resources :signos
  resources :problemas
  resources :pacientes


  get 'nutrismart/home'
  resources :personas


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'registrar/nutriologo', to: 'home#registro', via: :post, :as  => :guardar_nutriologo
  root :to => 'nutrismart#home'
end
