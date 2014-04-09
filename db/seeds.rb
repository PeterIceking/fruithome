# -*- encoding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User
User.create!( :id => "1", :username => "peter", :real_name => :"petericeking", :sex => :"male", :birthdate => "19910930", :e_mail => "peter@ec.com", :password_text => "peter", :password_digest => "peter", :question => :"peter", :answer => "iceking", :phone_number =>"18801927632", :shopping_exp => "9999", :member_type => "0", :city => "上海", :post_code => "200413", :advance_payment => "1") do |u|
	u.mail_addresses << MailAddress.create!( :address => "上海市杨浦区武川路111号" )
	u.mail_addresses << MailAddress.create!( :address => "重庆市北碚区复兴镇" )
	# u.accounts << Account.create!( :type => "rmb", :money => "999999")
	# u.accounts << Account.create!( :type => "usd", :money => "999999")
	u.collections << Collection.create!( :fruit_id => "1")
	u.collections << Collection.create!( :fruit_id => "2")
end

# AdminUser
AdminUser.create!( :username => "admin", :password => "nottellyou", :admin_type => "admin", :e_mail => "admin@ec.com")
AdminUser.create!( :username => "root", :password => "nottellyou", :admin_type => "root", :e_mail => "root@ec.com")

# OriginPlace
OriginPlace.create!( :id => "1", :name => "中国大陆")
OriginPlace.create!( :id => "5", :name => "美国")
OriginPlace.create!( :id => "6", :name => "新西兰")
OriginPlace.create!( :id => "7", :name => "泰国")
OriginPlace.create!( :id => "8", :name => "越南")
OriginPlace.create!( :id => "9", :name => "印度")
OriginPlace.create!( :id => "10", :name => "西班牙")
OriginPlace.create!( :id => "11", :name => "葡萄牙")
OriginPlace.create!( :id => "2", :name => "台湾", :super_id => "1")
OriginPlace.create!( :id => "3", :name => "澳门", :super_id => "1")
OriginPlace.create!( :id => "4", :name => "香港", :super_id => "1")
OriginPlace.create!( :id => "12", :name => "新疆", :super_id => "1")
OriginPlace.create!( :id => "13", :name => "海南", :super_id => "1")
OriginPlace.create!( :id => "14", :name => "上海", :super_id => "1")do |op|
	# Fruit
	op.fruits << Fruit.create!( :name => "苹果", :fruit_type_id => "15", 
															:inventory => "100", :unit => "斤", :is_hot => "true",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊", :brief_introduction => "水果之家精心挑选来自陕西著名苹果之乡白水县的优质富士苹果，果面圆润光洁，呈现红色条纹或片状红晕，俏丽可爱。苹果香气浓郁，果肉脆嫩香甜，饱满多汁。" )
	op.fruits << Fruit.create!( :name => "火龙果", :fruit_type_id => "15", 
															:inventory => "100", :unit => "斤", :is_hot => "false",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊", :brief_introduction => "火龙果哟" )
	op.fruits << Fruit.create!( :name => "香蕉", :fruit_type_id => "15", 
															:inventory => "10", :unit => "斤", :is_hot => "true",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊" )
	op.fruits << Fruit.create!( :name => "梨子", :fruit_type_id => "15",
															:inventory => "100", :unit => "斤", :is_hot => "true",
															:price_present => "3", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊" )
	op.fruits << Fruit.create!( :name => "杏子", :fruit_type_id => "15",
															:inventory => "6", :unit => "斤", :is_hot => "false",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊" )
	op.fruits << Fruit.create!( :name => "葡萄", :fruit_type_id => "15",
															:inventory => "100", :unit => "斤", :is_hot => "true",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊" )
	op.fruits << Fruit.create!( :name => "西瓜", :fruit_type_id => "15",
															:inventory => "0", :unit => "斤", :is_hot => "false",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊" )
	op.fruits << Fruit.create!( :name => "桃子", :fruit_type_id => "15",
															:inventory => "100", :unit => "斤", :is_hot => "false",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊" )
	op.fruits << Fruit.create!( :name => "橙子", :fruit_type_id => "15",
															:inventory => "100", :unit => "斤", :is_hot => "true",
															:price_present => "10", :price_history => "12",
															:price_other => "13",:discount => "2",
															:introduction => "好吃的水果来了啊，快来品尝啊" )
end	
OriginPlace.create!( :id => "15", :name => "北京", :super_id => "1")
OriginPlace.create!( :id => "16", :name => "浙江", :super_id => "1")
OriginPlace.create!( :id => "17", :name => "重庆", :super_id => "1")
OriginPlace.create!( :id => "18", :name => "湖南", :super_id => "1")
OriginPlace.create!( :id => "19", :name => "湖北", :super_id => "1")
OriginPlace.create!( :id => "20", :name => "江苏", :super_id => "1")
OriginPlace.create!( :id => "21", :name => "广东", :super_id => "1")
OriginPlace.create!( :id => "22", :name => "福建", :super_id => "1")

# FruitType
FruitType.create!( :id => "1", :name => "人群", :description => "根据适宜人群分类" )
FruitType.create!( :id => "2", :name => "场合", :description => "根据适宜场合分类" )
FruitType.create!( :id => "3", :name => "礼品区", :description => "送亲友，送自己" )
FruitType.create!( :id => "11", :name => "儿童", :description => "儿童水果", :super_id => "1" )
FruitType.create!( :id => "12", :name => "孕妇", :description => "孕妇水果", :super_id => "1" )
FruitType.create!( :id => "13", :name => "老年人", :description => "老年人水果", :super_id => "1" )
FruitType.create!( :id => "14", :name => "瘦身族", :description => "瘦身族水果", :super_id => "1" )
FruitType.create!( :id => "15", :name => "程序猿", :description => "程序猿水果", :super_id => "1" )
FruitType.create!( :id => "21", :name => "生日Party", :description => "生日Party水果", :super_id => "2" )
FruitType.create!( :id => "22", :name => "婚庆典礼", :description => "婚庆典礼水果", :super_id => "2" )
FruitType.create!( :id => "23", :name => "宴席聚会", :description => "宴席聚会1水果", :super_id => "2" )
FruitType.create!( :id => "24", :name => "办公会议", :description => "办公会议水果", :super_id => "2" )
FruitType.create!( :id => "25", :name => "探视病患", :description => "探视病患水果", :super_id => "2" )
FruitType.create!( :id => "26", :name => "答谢祝福", :description => "答谢祝福水果", :super_id => "2" )
FruitType.create!( :id => "31", :name => "水果礼盒", :description => "水果礼盒水果", :super_id => "3" )
FruitType.create!( :id => "32", :name => "水果礼篮", :description => "水果礼篮水果", :super_id => "3" )
FruitType.create!( :id => "33", :name => "水果礼券", :description => "水果礼券水果", :super_id => "3" )

# Supplier
Supplier.create!( :name => "上海水果园", :phone_number => "11111111111", :e_mail => "shanghaiguoyuan@ec.com")