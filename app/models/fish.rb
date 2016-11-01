class Fish < ApplicationRecord
  belongs_to :stalls
  has_many :recorded_trades
  belongs_to :all_seafood_stocks

  validates :english,
  presence: true

  validates :image,
  presence: true
end
