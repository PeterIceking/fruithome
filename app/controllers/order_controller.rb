# -*- encoding: utf-8 -*-
class OrderController < ApplicationController
	layout "self_center"
  def index
		@orders = Order.where("user_id =? and status != 0", current_user.id)
  end
	
	def show
		# @fruit = Fruit.first
	end
	def cart
		 # @fruit = Order.first
	end
	def pay
		# @fruit = Fruit.first
	end
end
