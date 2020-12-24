class Nutriologo < ApplicationRecord
  has_many :personas, :as => :perstable
  has_secure_password
end
