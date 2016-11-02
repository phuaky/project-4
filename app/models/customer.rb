class Customer < ApplicationRecord
  belongs_to :user_profile
  has_many :cart_items

  validates :user_profile_id,
  presence: true

  validates :fish_id,
  presence: true

  validates :qty_kg,
  presence: true

  validates :price_dollarsPerKg,
  presence: true

  validates :net_amt,
  presence: true
end
