class OrderItem < ActiveRecord::Base

	belongs_to :order
	belongs_to :fruit
end
