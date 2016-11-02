class AllSeafoodStock < ApplicationRecord
  belongs_to :fish
  belongs_to :stall

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
