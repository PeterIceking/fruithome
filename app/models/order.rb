class Order < ActiveRecord::Base

	# TruitName_MIN_LENGTH = 1
	# TruitName_MAX_LENGTH = 20
	# TruitName_RANGE = TruitName_MIN_LENGTH..TruitName_MAX_LENGTH
	# Description_MIN_LENGTH = 12
	# Description_MAX_LENGTH = 200
	# Description_RANGE = Description_MIN_LENGTH..Description_MAX_LENGTH
	
	validates :fruit_id,	:presence => true												
	validates :user_id,		:presence => true
	validates :fruit_amount,	
												:presence => true
end
