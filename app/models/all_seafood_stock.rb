class AllSeafoodStock < ApplicationRecord
  has_many :stall
  belongs_to :recorded_trade
  belongs_to :fish

  validates :stall_id,
  presence: true

  validates :fish_id,
  presence: true

  validates :volume_kg,
  presence: true

  validates :price_dollarsPerKg,
  presence: true

end
