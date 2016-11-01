class AllSeafoodStock < ApplicationRecord
  has_many :stall
  has_many :recorded_trade
  has_many :fish

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
