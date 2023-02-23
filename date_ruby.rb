require "date"

def date
  date = Date.new(2023,2,12)
  puts date
  puts "ohayou"
end
date

def delivery_fee_judge(price)
  if price < 2000 # priceが２０００未満の場合
    return "配送料が発生します。"
  end
  return "配送料は無料となります。"
end

puts delivery_fee_judge(1500)

class Menu
  attr_accessor :name
  attr_accessor :price

  def information#(name)
    # このメソッドが呼び出されたら、下記の文字列を出力します。
    "#{self.name}の価格は#{self.price}円です。"
  end

  def total_price(count)
    if count =< 3
  end
end

menu_1 = Menu.new
menu_1.name = "ホットケーキ"
menu_1.price = 500

puts menu_1.information#(menu_1.name)
