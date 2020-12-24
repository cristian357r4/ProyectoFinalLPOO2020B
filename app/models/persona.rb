class Persona < ApplicationRecord
  belongs_to :perstable, :polymorphic => true
end
