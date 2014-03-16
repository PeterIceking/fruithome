class Fruit < ActiveRecord::Base
	
	# has_many :fruit_types 
	belongs_to :fruit_type
	has_many :comments
	has_many :supply_infomations
	has_many :suppliers, :through => :supply_infomations
	has_many :order_items
	has_many :orders, :through => :order_items
	
	# TruitName_MIN_LENGTH = 1
	# TruitName_MAX_LENGTH = 20
	# TruitName_RANGE = TruitName_MIN_LENGTH..TruitName_MAX_LENGTH
	# Description_MIN_LENGTH = 12
	# Description_MAX_LENGTH = 200
	# Description_RANGE = Description_MIN_LENGTH..Description_MAX_LENGTH
	
	# validates :fruit_name,	:uniqueness => true,
													# :presence => true,
													# :length => { :within => TruitName_RANGE } #1-20
	# validates :fruit_type_id,
													# :presence => true
	# validates :description,	:length => { :within => Description_RANGE} #12-200
end
