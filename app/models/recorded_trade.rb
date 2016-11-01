class RecordedTrade < ApplicationRecord
  belongs_to :customer
  has_many :all_seafood_stocks
  belongs_to :stall
  belongs_to :fish


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
