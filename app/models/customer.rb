class Customer < ApplicationRecord
  belongs_to :user_profile
  has_many :carts #entries
  has_many :purchases
  has_many :invoices

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
