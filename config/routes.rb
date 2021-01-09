Rails.application.routes.draw do
  resources :suplementos
  resources :signos
  resources :problemas
  resources :pacientes, only: [:index, :new, :create, :update]

  #ruta no acccesible
  match 'pacientes/:id/editar' => 'pacientes#edit', via: :get, :as => :editar_paciente
  match 'pacientes/:id/eliminar' => 'pacientes#destroy', via: :delete, :as => :eliminar_paciente
  match 'pacientes/:id' => 'pacientes#show', via: :get, :as => :mostrar_paciente

  #quimicas
  match 'paciente/:paciente_id/quimica/new' => 'quimicas#new', via: :get, :as => :new_quimica
  match 'quimicas/create' => 'quimicas#create', via: :post, :as => :create_quimica
  match 'quimicas/:id/update' => 'quimicas#update', via: :patch, :as => :update_quimica
  match 'quimicas/:id/edit' => 'quimicas#edit', via: :get, :as => :edit_quimica
  match 'paciente/:paciente_id/quimicas/index' => 'quimicas#index', via: :get, :as => :index_quimica
  match 'quimica/:id/delete' => 'quimicas#destroy', via: :delete, :as => :eliminar_quimica

  get 'nutrismart/home'
  resources :personas


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'registrar/nutriologo', to: 'home#registro', via: :post, :as  => :guardar_nutriologo
  root :to => 'nutrismart#home'
end
