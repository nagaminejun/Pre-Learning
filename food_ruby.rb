require "./menu_ruby"

class Food < Menu
  attr_accessor :calorie

  def initialize(name:, price:, calorie:)
    super(name:, price:)
    self.calorie = calorie
  end

  def infomation
    "#{self.name}　#{self.price}円 #{self.kcal_info}kcal"
  end

  def kcal_info
    "#{self.name} #{self.calorie}kcal"
  end
end