Rails.application.routes.draw do

  resources :consultas
  resources :consultas, except: [:index, :new] do
    resources :signos
    resources :problemas
  end


  match 'consulta/paciente/:paciente_id/index' => 'consultas#index', via: :get, :as => :consulta_index
  match 'consulta/paciente/:paciente_id/new' => 'consultas#new', via: :get, :as => :nueva_consulta
  resources :personas
  resources :alimentos
  resources :suplementos
  resources :pacientes, only: [:index, :new, :create]

  #ruta no acccesible
  match 'pacientes/:id/editar' => 'pacientes#edit', via: :get, :as => :editar_paciente
  match 'pacientes/:id/update' => 'pacientes#update', via: :patch, :as => :update_paciente
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

  #plan de suplementos
  match 'paciente/:paciente_id/plan_suplementos/new' => 'plansuplementos#new', via: :get, :as => :new_plan
  match 'plan_suplemento/create' => 'plansuplementos#create', via: :post, :as => :create_plan
  match 'plan_suplemento/:id/update' => 'plansuplementos#update', via: :patch, :as => :update_plan
  match 'plan_suplemento/:id/edit' => 'plansuplementos#edit', via: :get, :as => :edit_plan
  match 'paciente/:paciente_id/plan_suplementos/index' => 'plansuplementos#index', via: :get, :as => :index_plan
  match 'plan_suplemento/:id/delete' => 'plansuplementos#destroy', via: :delete, :as => :eliminar_plan

  #dietas
  match 'paciente/:paciente_id/dieta/new' => 'dietas#new', via: :get, :as => :new_dieta
  match 'dieta/create' => 'dietas#create', via: :post, :as => :create_dieta
  match 'dieta/:id/update' => 'dietas#update', via: :patch, :as => :update_dieta
  match 'dieta/:id/edit' => 'dietas#edit', via: :get, :as => :edit_dieta
  match 'paciente/:paciente_id/dietas/index' => 'dietas#index', via: :get, :as => :index_dieta
  match 'dieta/:id/delete' => 'dietas#destroy', via: :delete, :as => :eliminar_dieta


  get 'nutrismart/home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'registrar/nutriologo', to: 'home#registro', via: :post, :as  => :guardar_nutriologo

  get 'login', to: 'sessions#new'
  match 'login' => 'sessions#create', via: :post
  delete 'logout', to: 'sessions#destroy'
  match 'register' => 'sessions#register', via: :get, :as => :registrar_nutriologo

  match 'home/index' => 'home#index', via:  :get, :as => :home_path


  root :to => 'sessions#new'
end
