class Consulta < ApplicationRecord
  belongs_to :paciente
  belongs_to :nutriologo
  has_many :problemas, dependent: :destroy
  has_many :signos, dependent: :destroy
end
