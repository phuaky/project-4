class Purchase < ApplicationRecord
  belongs_to :customer
  belongs_to :fish
  # belongs_to :invoice
end
