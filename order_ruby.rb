require "./food_ruby"
require "./drink_ruby"

food_1 = Food.new(name: "ホットケーキ", price: 500, calorie: 800)
food_2 = Food.new(name: "ケバブ", price: 700, calorie: 900)
food_3 = Food.new(name: "ステーキ", price: 1000, calorie: 1000)
drink_1 = Drink.new(name: "お茶", price: 150, volume: 500)
drink_2 = Drink.new(name: "カルピス", price: 200, volume: 350)

menus = [food_1, food_2, food_3, drink_1, drink_2]

menus.each_with_index do |menu, index|
  puts "#{index}. #{menu.infomation}"
end

puts "--------------------"
puts "こんにちは！メニューの番号を入力してください。"
order = gets.chomp.to_i
selected_menu = menus[order]
puts "--------------------"
puts "選択したメニューは、#{order}.の#{selected_menu.name}ですね。"
puts "購入数を入力してください。"
puts "3個以上の購入で100円割引、5個以上で200円割引となります。"
count = gets.chomp.to_i
puts "--------------------"
puts "#{count}点、お買い求めですね。"

if count >= 5
  puts "200円の割引が適用されます。"
elsif count >= 3
  puts "100円の割引が適用されます。"
end

if Menu.is_discount_day?
  puts "本日は割引対象DAYなので、ここからさらに半額です！"
end

puts "お会計は#{selected_menu.total_price(count)}円でございます！"