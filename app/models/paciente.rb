class Paciente < ApplicationRecord
  #permite destruir al paciente junto con sus datos personales
  has_many :personas, :as => :perstable, dependent: :destroy
  has_many :quimicas
end
