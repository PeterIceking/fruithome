# -*- encoding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#FruitType
FruitType.create!( :type_name => "产地", :type_description => "根据水果产地分类" )
FruitType.create!( :type_name => "人群", :type_description => "根据适宜人群分类" )
FruitType.create!( :type_name => "场合", :type_description => "根据适宜场合分类" )
FruitType.create!( :type_name => "礼品区", :type_description => "送亲友，送自己" )
FruitType.create!( :type_name => "中国大陆", :type_description => "中国大陆水果", :super_type_id => "1" )
FruitType.create!( :type_name => "台湾", :type_description => "台湾水果", :super_type_id => "1" )
FruitType.create!( :type_name => "美国", :type_description => "美国水果", :super_type_id => "1" )
FruitType.create!( :type_name => "新西兰", :type_description => "新西兰水果", :super_type_id => "1" )
FruitType.create!( :type_name => "泰国", :type_description => "泰国水果", :super_type_id => "1" )
FruitType.create!( :type_name => "葡萄牙", :type_description => "葡萄牙水果", :super_type_id => "1" )
FruitType.create!( :type_name => "西班牙", :type_description => "西班牙水果", :super_type_id => "1" )
FruitType.create!( :type_name => "儿童", :type_description => "儿童水果", :super_type_id => "2" )
FruitType.create!( :type_name => "孕妇", :type_description => "孕妇水果", :super_type_id => "2" )
FruitType.create!( :type_name => "老年人", :type_description => "老年人水果", :super_type_id => "2" )
FruitType.create!( :type_name => "瘦身族", :type_description => "瘦身族水果", :super_type_id => "2" )
FruitType.create!( :type_name => "程序猿", :type_description => "程序猿水果", :super_type_id => "2" )
FruitType.create!( :type_name => "生日Party", :type_description => "生日Party水果", :super_type_id => "3" )
FruitType.create!( :type_name => "婚庆典礼", :type_description => "婚庆典礼水果", :super_type_id => "3" )
FruitType.create!( :type_name => "宴席聚会1", :type_description => "宴席聚会1水果", :super_type_id => "3" )
FruitType.create!( :type_name => "办公会议", :type_description => "办公会议水果", :super_type_id => "3" )
FruitType.create!( :type_name => "探视病患", :type_description => "探视病患水果", :super_type_id => "3" )
FruitType.create!( :type_name => "答谢祝福", :type_description => "答谢祝福水果", :super_type_id => "3" )
FruitType.create!( :type_name => "水果礼盒", :type_description => "水果礼盒水果", :super_type_id => "4" )
FruitType.create!( :type_name => "水果礼篮", :type_description => "水果礼篮水果", :super_type_id => "4" )
FruitType.create!( :type_name => "水果礼券", :type_description => "水果礼券水果", :super_type_id => "4" )
FruitType.create!( :type_name => "新疆", :type_description => "新疆水果", :super_type_id => "5" )
FruitType.create!( :type_name => "海南", :type_description => "海南水果", :super_type_id => "5" )
FruitType.create!( :type_name => "上海", :type_description => "上海水果", :super_type_id => "5" )
FruitType.create!( :type_name => "北京", :type_description => "北京水果", :super_type_id => "5" )
FruitType.create!( :type_name => "浙江", :type_description => "浙江水果", :super_type_id => "5" )
FruitType.create!( :type_name => "重庆", :type_description => "重庆水果", :super_type_id => "5" )
FruitType.create!( :type_name => "湖南", :type_description => "湖南水果", :super_type_id => "5" )
FruitType.create!( :type_name => "湖北", :type_description => "湖北水果", :super_type_id => "5" )
FruitType.create!( :type_name => "江苏", :type_description => "江苏水果", :super_type_id => "5" )
FruitType.create!( :type_name => "广东", :type_description => "广东水果", :super_type_id => "5" )
FruitType.create!( :type_name => "福建", :type_description => "福建水果", :super_type_id => "5" )

#Fruit
#Fruit.creat!( :fruit_name => , fruit_type_id => , description =>  )
Fruit.creat!( :fruit_name => "苹果", fruit_type_id => "1", description => "好吃的水果来了啊，快来品尝啊" )
