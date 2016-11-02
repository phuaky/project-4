class Customer < ApplicationRecord
  belongs_to :user_profile
  has_many :carts #entries
  has_many :purchases
  has_many :invoices

  validates :user_profile_id,
  presence: true

end
