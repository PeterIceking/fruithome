# -*- encoding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# #FruitType
FruitType.create!( :id => "1", :type_name => "产地", :description => "根据水果产地分类" )
FruitType.create!( :id => "2", :type_name => "人群", :description => "根据适宜人群分类" )
FruitType.create!( :id => "3", :type_name => "场合", :description => "根据适宜场合分类" )
FruitType.create!( :id => "4", :type_name => "礼品区", :description => "送亲友，送自己" )
FruitType.create!( :id => "11", :type_name => "中国大陆", :description => "中国大陆水果", :super_id => "1" ) do |ft|
	# Fruit
	ft.fruits << Fruit.create!( :fruit_name => "苹果", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
	ft.fruits << Fruit.create!( :fruit_name => "香蕉", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
	ft.fruits << Fruit.create!( :fruit_name => "梨子", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
	ft.fruits << Fruit.create!( :fruit_name => "杏子", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
	ft.fruits << Fruit.create!( :fruit_name => "葡萄", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
	ft.fruits << Fruit.create!( :fruit_name => "西瓜", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
	ft.fruits << Fruit.create!( :fruit_name => "桃子", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
	ft.fruits << Fruit.create!( :fruit_name => "橙子", :fruit_type_id => "11", :introduction => "好吃的水果来了啊，快来品尝啊" )
end	
FruitType.create!( :id => "12", :type_name => "台湾", :description => "台湾水果", :super_id => "1" )
FruitType.create!( :id => "13", :type_name => "美国", :description => "美国水果", :super_id => "1" )
FruitType.create!( :id => "14", :type_name => "新西兰", :description => "新西兰水果", :super_id => "1" )
FruitType.create!( :id => "15", :type_name => "泰国", :description => "泰国水果", :super_id => "1" )
FruitType.create!( :id => "16", :type_name => "葡萄牙", :description => "葡萄牙水果", :super_id => "1" )
FruitType.create!( :id => "17", :type_name => "西班牙", :description => "西班牙水果", :super_id => "1" )
FruitType.create!( :id => "21", :type_name => "儿童", :description => "儿童水果", :super_id => "2" )
FruitType.create!( :id => "22", :type_name => "孕妇", :description => "孕妇水果", :super_id => "2" )
FruitType.create!( :id => "23", :type_name => "老年人", :description => "老年人水果", :super_id => "2" )
FruitType.create!( :id => "24", :type_name => "瘦身族", :description => "瘦身族水果", :super_id => "2" )
FruitType.create!( :id => "25", :type_name => "程序猿", :description => "程序猿水果", :super_id => "2" )
FruitType.create!( :id => "31", :type_name => "生日Party", :description => "生日Party水果", :super_id => "3" )
FruitType.create!( :id => "32", :type_name => "婚庆典礼", :description => "婚庆典礼水果", :super_id => "3" )
FruitType.create!( :id => "33", :type_name => "宴席聚会1", :description => "宴席聚会1水果", :super_id => "3" )
FruitType.create!( :id => "34", :type_name => "办公会议", :description => "办公会议水果", :super_id => "3" )
FruitType.create!( :id => "35", :type_name => "探视病患", :description => "探视病患水果", :super_id => "3" )
FruitType.create!( :id => "36", :type_name => "答谢祝福", :description => "答谢祝福水果", :super_id => "3" )
FruitType.create!( :id => "41", :type_name => "水果礼盒", :description => "水果礼盒水果", :super_id => "4" )
FruitType.create!( :id => "42", :type_name => "水果礼篮", :description => "水果礼篮水果", :super_id => "4" )
FruitType.create!( :id => "43", :type_name => "水果礼券", :description => "水果礼券水果", :super_id => "4" )
FruitType.create!( :id => "51", :type_name => "新疆", :description => "新疆水果", :super_id => "5" )
FruitType.create!( :id => "52", :type_name => "海南", :description => "海南水果", :super_id => "5" )
FruitType.create!( :id => "53", :type_name => "上海", :description => "上海水果", :super_id => "5" )
FruitType.create!( :id => "54", :type_name => "北京", :description => "北京水果", :super_id => "5" )
FruitType.create!( :id => "55", :type_name => "浙江", :description => "浙江水果", :super_id => "5" )
FruitType.create!( :id => "56", :type_name => "重庆", :description => "重庆水果", :super_id => "5" )
FruitType.create!( :id => "57", :type_name => "湖南", :description => "湖南水果", :super_id => "5" )
FruitType.create!( :id => "58", :type_name => "湖北", :description => "湖北水果", :super_id => "5" )
FruitType.create!( :id => "59", :type_name => "江苏", :description => "江苏水果", :super_id => "5" )
FruitType.create!( :id => "510", :type_name => "广东", :description => "广东水果", :super_id => "5" )
FruitType.create!( :id => "511", :type_name => "福建", :description => "福建水果", :super_id => "5" )
