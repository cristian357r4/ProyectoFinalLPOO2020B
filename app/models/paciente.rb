class Paciente < ApplicationRecord
  has_many :personas, :as => :perstable
end
