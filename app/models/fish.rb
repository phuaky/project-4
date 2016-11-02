class Fish < ApplicationRecord
  has_many :all_seafood_stocks
  has_many :stalls, through: :all_seafood_stocks

  validates :english,
  presence: true

  validates :image,
  presence: true
end
