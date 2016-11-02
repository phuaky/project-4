class CartItem < ApplicationRecord
  belongs_to :customer
  has_many :fishes
  has_many :stalls

end
