class Nutriologo < ApplicationRecord
  has_many :personas, :as => :perstable
end
