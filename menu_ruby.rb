require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def infomation
    "#{self.name}　#{self.price}円"
  end

  def total_price(count)
    total_price = self.price * count

    if count >= 5
      total_price -= 200
    elsif count >= 3
      total_price -= 100
    end

    return total_price
  end

  def Menu.is_discount_day?
    today = Date.today #Date.new(2023,2,12)この日は日曜日
    return today.saturday? || today.sunday?
  end
end