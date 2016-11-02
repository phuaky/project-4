class AllSeafoodStock < ApplicationRecord
  has_many :stalls
  has_many :recorded_trades
  has_many :fishes, through: :stalls

  # validates :stall_id,
  # presence: true
  #
  # validates :fish_id,
  # presence: true

  # validates :volume_kg,
  # presence: true
  #
  # validates :price_dollarsPerKg,
  # presence: true

end
