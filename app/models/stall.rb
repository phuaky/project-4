class Stall < ApplicationRecord
  belongs_to :user_profile
  belongs_to :fish
  belongs_to :all_seafood_stock
  has_many :recorded_trades

  validates :user_profile_id,
  presence: true

  validates :name,
  presence: true

  validates :owner,
  presence: true
end
