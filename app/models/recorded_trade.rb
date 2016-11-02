class RecordedTrade < ApplicationRecord
  has_many :customers
  has_many :stalls
  has_many :fishes

  validates :customer_id,
  presence: true

  validates :stall_id,
  presence: true

  validates :fish_id,
  presence: true

  validates :sell_kg,
  presence: true

  validates :price_dollarsPerKg,
  presence: true

  validates :net_amt,
  presence: true

end
