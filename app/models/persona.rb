class Persona < ApplicationRecord
  belongs_to :perstable, :polymorphic => true
  scope :nutriologo, -> { where(perstable_type: "Nutriologo")}
  scope :paciente, -> { where(perstable_type: "Paciente")}
end
