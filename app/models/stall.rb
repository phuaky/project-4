class Stall < ApplicationRecord
  belongs_to :user_profile
  has_many :fishes
  belongs_to :all_seafood_stocks
  has_many :recorded_trades

  # validates :user_profile_id,
  # presence: true
  #
  # validates :name,
  # presence: true
  #
  # validates :owner,
  # presence: true
end
