class Stall < ApplicationRecord
  belongs_to :user_profile
  has_many :all_seafood_stocks
  has_many :fishes, through: :all_seafood_stocks

  # validates :user_profile_id,
  # presence: true
  #
  # validates :name,
  # presence: true
  #
  # validates :owner,
  # presence: true

end
