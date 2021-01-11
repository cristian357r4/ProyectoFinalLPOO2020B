class Consulta < ApplicationRecord
  belongs_to :nutriologo
  belongs_to :paciente
  belongs_to :signo
  belongs_to :problema
end
