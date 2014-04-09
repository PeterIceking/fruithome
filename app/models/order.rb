# -*- encoding: utf-8 -*-
class Order < ActiveRecord::Base

	belongs_to :user
	has_many :order_items
	has_many :fruits, :through => :order_items
	
	# TruitName_MIN_LENGTH = 1
	# TruitName_MAX_LENGTH = 20
	# TruitName_RANGE = TruitName_MIN_LENGTH..TruitName_MAX_LENGTH
	# Description_MIN_LENGTH = 12
	# Description_MAX_LENGTH = 200
	# Description_RANGE = Description_MIN_LENGTH..Description_MAX_LENGTH
	
	# validates :fruit_id,	:presence => true												
	# validates :user_id,		:presence => true
	# validates :fruit_amount,	
												# :presence => true

	def	status_text
																					#0:等待付款,购物车状态;
																					#1:已付款，等待发货;
																					#2:已发货，等待验收;
																					#3:已签收，交易完成，等待评价;
																					#4:已评价，订单完成将关闭；
																					#9:已完成，正常完成状态
																					#10:已取消交易
																					#11:退货等;
		t = case	self.status
					when 1..3	then	"交易中"
					when 4..9	then	"已完成"
					when 10 	then	"已取消"
					when 11		then	"退货"
				end
	end

end
