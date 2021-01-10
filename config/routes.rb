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

  #biometrias
  match 'paciente/:paciente_id/biometria/new' => 'biometrias#new', via: :get, :as => :new_biometria
  match 'biometrias/create' => 'biometrias#create', via: :post, :as => :create_biometria
  match 'biometrias/:id/update' => 'biometrias#update', via: :patch, :as => :update_biometria
  match 'biometrias/:id/edit' => 'biometrias#edit', via: :get, :as => :edit_biometria
  match 'paciente/:paciente_id/biometrias/index' => 'biometrias#index', via: :get, :as => :index_biometria
  match 'biometria/:id/delete' => 'biometrias#destroy', via: :delete, :as => :eliminar_biometria

  #actividades
  match 'paciente/:paciente_id/actividad/new' => 'actividades#new', via: :get, :as => :new_actividad
  match 'actividades/create' => 'actividades#create', via: :post, :as => :create_actividad
  match 'actividades/:id/update' => 'actividades#update', via: :patch, :as => :update_actividad
  match 'actividades/:id/edit' => 'actividades#edit', via: :get, :as => :edit_actividad
  match 'paciente/:paciente_id/actividades/index' => 'actividades#index', via: :get, :as => :index_actividad
  match 'actividad/:id/delete' => 'actividades#destroy', via: :delete, :as => :eliminar_actividad

  #habitos
  match 'paciente/:paciente_id/habitos/new' => 'habitos#new', via: :get, :as => :new_habito
  match 'habitos/create' => 'habitos#create', via: :post, :as => :create_habito
  match 'habitos/:id/update' => 'habitos#update', via: :patch, :as => :update_habito
  match 'habitos/:id/edit' => 'habitos#edit', via: :get, :as => :edit_habito
  match 'paciente/:paciente_id/habitos/index' => 'habitos#index', via: :get, :as => :index_habito
  match 'habito/:id/delete' => 'habitos#destroy', via: :delete, :as => :eliminar_habito

  #antecedentes Clinicos
  match 'paciente/:paciente_id/antecedente/new' => 'antecedentes#new', via: :get, :as => :new_antecedente
  match 'antecedente/create' => 'antecedentes#create', via: :post, :as => :create_antecedente
  match 'antecedente/:id/update' => 'antecedentes#update', via: :patch, :as => :update_antecendete
  match 'antecedente/:id/edit' => 'antecedentes#edit', via: :get, :as => :edit_antecedente
  match 'paciente/:paciente_id/antecedentes/index' => 'antecedentes#index', via: :get, :as => :index_antecedente
  match 'antecedente/:id/delete' => 'antecedentes#destroy', via: :delete, :as => :eliminar_antecedente




  get 'nutrismart/home'
  resources :personas


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'registrar/nutriologo', to: 'home#registro', via: :post, :as  => :guardar_nutriologo
  root :to => 'nutrismart#home'
end
