class Invoice < ApplicationRecord
  has_many :purchases
  belongs_to :customer
end
