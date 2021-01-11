class Persona < ApplicationRecord
  belongs_to :perstable, :polymorphic => true
  scope :nutriologo, -> { where(perstable_type: "Nutriologo")}
  scope :paciente, -> { where(perstable_type: "Paciente")}

  def full_name
    "#{try(:nombre)} #{try(:paterno)} #{try(:materno)}".to_s

  end
  validates :nombre, presence: true
  validates :paterno, presence: true
  validates :materno, presence: true
  validates :sexo, presence: true
  validates :telefono, presence: true
  validates :correo, presence: true, uniqueness: true

end
