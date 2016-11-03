class Fish < ApplicationRecord
  has_many :all_seafood_stocks
  has_many :stalls, through: :all_seafood_stocks
  has_many :carts
  has_many :purchases

  validates :english,
  presence: true

  validates :image,
  presence: true

  def volume
    total_volume = 0
    all_seafood_stocks.each do |entry|
      total_volume += entry.volume if entry.volume
    end
    if total_volume != 0
      return total_volume
    else
      return 'nil'
    end
  end

  def price
    total_price = 0
    counter = 0
    all_seafood_stocks.each do |entry|
      if entry.price
        total_price += entry.price
        counter += 1
      end
    end
    if total_price != 0
      average_price = total_price / counter
      return average_price
    else
      return 'nil'
    end
  end

end
