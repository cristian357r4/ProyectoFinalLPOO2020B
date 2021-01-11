class Nutriologo < ApplicationRecord
  has_many :personas, :as => :perstable
  has_secure_password
  validates :cedula, presence: true
  validates :login, presence: true
  validates :password, presence: true
  validates :password, confirmation: { case_sesitive: true }
                                      
end
