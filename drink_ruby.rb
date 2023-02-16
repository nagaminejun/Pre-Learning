require "./menu_ruby"

class Drink < Menu
  attr_accessor :volume

  def initialize(name:, price:, volume:)
    super(name:, price:)
    self.volume = volume
  end

  def infomation
    "#{self.name}　#{self.price}円 #{self.volume_info}ml"
  end

  def volume_info
    "#{self.name} #{self.volume}ml"
  end
end