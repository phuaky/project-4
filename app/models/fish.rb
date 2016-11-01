class Fish < ApplicationRecord
  has_many :stalls
  has_many :recorded_trades
  has_many :all_seafood_stocks

  validates :english,
  presence: true

  validates :image,
  presence: true
end
