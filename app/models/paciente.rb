class Paciente < ApplicationRecord
  #dependent: :destroy ==== permite destruir al paciente junto con sus datos personales
  has_many :personas, :as => :perstable, dependent: :destroy
  has_many :quimicas
  has_many :biometrias
  has_many :actividades
  has_many :habitos
  has_many :antecedentes
  has_many :plansuplementos
  has_many :dietas
end
